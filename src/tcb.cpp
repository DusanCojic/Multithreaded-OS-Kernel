#include "../h/tcb.hpp"
#include "../h/syscall_c.hpp"

TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(TCB::Body body, void* arg, uint64 timeSlice) {
    return new TCB(body, arg, timeSlice);
}

void TCB::yield() {
    thread_dispatch();
}

void TCB::dispatch() {
    TCB* old = TCB::running;
    if (!old->finished && !old->blocked && !old->isSleeping())
        Scheduler::put(old);
    TCB::running = Scheduler::get();

    if (old != running)
        TCB::contextSwitch(&old->context, &TCB::running->context);
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}