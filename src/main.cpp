#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/tcb.hpp"
#include "../test/ConsumerProducer_C_API_test.hpp"
#include "../test/Threads_C_API_test.hpp"
#include "../lib/console.h"
#include "../h/semaphore.hpp"
#include "../test/printing.hpp"
#include "../test//ThreadSleep_C_API_test.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "../test/Threads_CPP_API_test.hpp"
#include "../test/System_Mode_test.hpp"
#include "../h/bounded_buffer.hpp"
#include "../h/console.hpp"
#include "../test/buffer.hpp"
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp"

extern void userMain();

void userMainWrapper(void* arg) {
    userMain();
}

void main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap | 0b00);
    MemoryAllocator::init();
    _Console::initConsole();

    thread_t t0, t_putc;
    thread_create(&t0, nullptr, nullptr);
    TCB::running = t0;
    thread_create(&t_putc, _Console::putcHandlerWrapper, nullptr);

    thread_t t_userMain;
    thread_create(&t_userMain, userMainWrapper, nullptr);

    Riscv::user = true;
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!t_userMain->isFinished())
        thread_dispatch();

    Riscv::user = false;
    _Console::flush();

    __asm__ volatile ("li a0, 0x5555");
    __asm__ volatile ("li a1, 0x100000");
    __asm__ volatile ("sw a0, 0(a1)");
}