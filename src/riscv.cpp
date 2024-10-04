#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"
#include "../h/semaphore.hpp"
#include "../lib/console.h"
#include "../h/wait_list.hpp"
#include "../h/console.hpp"
#include "../lib/mem.h"

bool Riscv::user = false;

void Riscv::popSppSpie()
{
    if (user) {
        mc_sstatus(Riscv::SSTATUS_SPP);
    }
    else {
        ms_sstatus(Riscv::SSTATUS_SPP);
    }
    __asm volatile("csrw sepc, ra");
    __asm volatile("sret");
}

using Body = void(*)(void*);

void Riscv::handleSupervisorTrap() {
    uint64 volatile scause = r_scause();

    // read the args
    uint64 volatile arg1;
    __asm__ volatile("mv %[a], a0" : [a] "=r" (arg1));
    uint64 volatile arg2;
    __asm__ volatile("mv %[a], a1" : [a] "=r" (arg2));
    uint64 volatile arg3;
    __asm__ volatile("mv %[a], a2" : [a] "=r" (arg3));
    uint64 volatile arg4;
    __asm__ volatile("mv %[a], a3" : [a] "=r" (arg4));

    // Check if syscall happened
    if (scause == SCAUSE::SYSCALL_USER || scause == SCAUSE::SYSCALL_SYSTEM) {
        uint64 volatile sepc = r_sepc();
        sepc += 4;
        uint64 volatile sstatus = r_sstatus();

        sem_t volatile handle;
        int volatile ret;

        uint64 volatile syscall_id = arg1;

        switch (syscall_id) {

            // mem_alloc system call
            case SYSCALLS::MEM_ALLOC:
                size_t volatile size;
                void* volatile ptr;

                size = (size_t)arg2;

                ptr = MemoryAllocator::mem_alloc(size);
                __asm__ volatile ("mv a0, %[ret]" : : [ret] "r" (ptr));

                break;

            // mem_free system call
            case SYSCALLS::MEM_FREE:
                int volatile code;
                void* volatile mem;

                mem = (void*)arg2;

                code = MemoryAllocator::mem_free((void*)mem);
                __asm__ volatile ("mv a0, %[ret]" : : [ret] "r" (code));

                break;

            // thread_create system call
            case SYSCALLS::THREAD_CREATE:
                TCB** volatile tcb;
                Body volatile body;
                void* volatile arg;

                tcb = (TCB**)arg2;
                body = (Body)arg3;
                arg = (void*)arg4;

                // execute syscall
                *tcb = TCB::createThread(body, (void*)arg, DEFAULT_TIME_SLICE);

                // return value
                if (tcb)
                    __asm__ volatile ("li a0, 0");
                else
                    __asm__ volatile ("li a0, -1");

                break;

            // thread_exit system call
            case SYSCALLS::THREAD_EXIT:
                TCB::running->setFinished(true);
                thread_dispatch();
                __asm__ volatile ("li a0, 0");
                break;

            // thread_dispatch system call
            case SYSCALLS::THREAD_DISPATCH:
                TCB::dispatch();
                break;

            // time_sleep system call
            case SYSCALLS::TIME_SLEEP:
                time_t volatile time;
                time = (time_t)arg2;

                if (time != 0) {
                    TCB::running->setSleepingTime(time);
                    TCB::running->setSleep(true);

                    WaitList::add(TCB::running);
                    thread_dispatch();
                }

                break;

            // sem_init system call
            case SYSCALLS::SEM_OPEN:
                sem_t* volatile handleT;
                unsigned volatile init;

                handleT = (sem_t*)arg2;
                init = (int)arg3;

                *handleT = _Semaphore::createSemaphore(init);

                if (*handleT)
                    __asm__ volatile ("mv a0, %0" : : "r" (0));
                else
                    __asm__ volatile ("mv a0, %0" : : "r" (-1));

                break;

            // sem_close system call
            case SYSCALLS::SEM_CLOSE:
                handle = (sem_t)arg2;
                ret = handle->close();

                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
                break;

            // sem_wait system call
            case SYSCALLS::SEM_WAIT:
                handle = (sem_t)arg2;

                ret = handle->wait();
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
                break;

            // sem_signal system call
            case SYSCALLS::SEM_SIGNAL:
                handle = (sem_t)arg2;

                ret = handle->signal();
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
                break;

            // sem_trywait system call
            case SYSCALLS::SEM_TRYWAIT:
                handle = (sem_t)arg2;

                ret = handle->tryWait();

                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));

                break;

            // sem_timedwait system call
            case SYSCALLS::SEM_TIMEDWAIT:
                handle = (sem_t)arg2;
                time_t volatile timeout;
                timeout = (time_t)arg3;

                ret = handle->timedwait(timeout);
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));

                break;

            // getc system call
            case SYSCALLS::GETC:
                ret = _Console::GETC();
                // ret = __getc();
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
                break;

            // putc system call
            case SYSCALLS::PUTC:
                char volatile c;
                c = (char)arg2;
                _Console::PUTC(c);
                // __putc(c);
                break;

            case SYSCALLS::PUTC_HANDLER:
                _Console::putcHandler();
                break;
        }

        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (scause == SCAUSE::HARDWARE) {
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();
        //console_handler();
        _Console::console_handler();
        __asm__ volatile ("mv a0, %[r]" : : [r] "r" (arg1));
        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (scause == SCAUSE::SOFTWARE) {
        Riscv::mc_sip(SIP_SSIP);
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();

        WaitList::wake();

        TCB::timeSliceCounter++;

        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
        }
        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else {
        // Unknown interrupt
        putc('\n');
        printString("SCAUSE = ");
        printInt(scause);
        printString("\nSEPC = ");
        printInt(r_sepc());
        printString("\nSTVAL = ");
        printInt(r_stval());
        printString("\n");
        _Console::flush();
        __asm__ volatile ("li a0, 0x5555");
        __asm__ volatile ("li a1, 0x100000");
        __asm__ volatile ("sw a0, 0(a1)");
    }

}