#include "../h/semaphore.hpp"
#include "../h/syscall_c.hpp"

int _Semaphore::wait() {
    if (this->closed)
        return -1;

    if (--value < 0) {
        this->blocked.addLast(TCB::running);
        TCB::running->setBlocked(true);
        thread_dispatch();

        if (this->closed)
            return -1;
    }

    return 0;
}

int _Semaphore::signal() {
    if (this->closed)
        return -1;

    if (++value <= 0) {
        TCB* newRunning = this->blocked.removeFirst();
        if (newRunning->isBlocked()) {
            newRunning->setBlocked(false);
            Scheduler::put(newRunning);
        }
    }

    return 0;
}

int _Semaphore::close() {
    if (this->closed)
        return -1;

    while (this->blocked.peekFirst()) {
        TCB* current = this->blocked.removeFirst();
        current->setBlocked(false);
        Scheduler::put(current);
    }

    return 0;
}

int _Semaphore::timedwait(time_t timeout) {
    if (this->closed)
        return -1;

    int ret = 0;

    if (--this->value < 0) {
        this->blocked.addLast(TCB::running);
        TCB::running->setBlocked(true);
        TCB::running->setSleepingTime(timeout);
        TCB::running->setSleep(true);
        WaitList::add(TCB::running);

        thread_dispatch();

        if (TCB::running->isBlocked())
            ret = -2;

        TCB::running->setBlocked(false);
        TCB::running->setSleep(false);

        if (this->closed)
            ret = -1;
    }

    return ret;
}

int _Semaphore::tryWait() {
    if (closed)
        return -1;

    if (value <= 0)
        return 1;

    return 0;
}
