#ifndef SEMAPHORE_HPP
#define SEMAPHORE_HPP

#include "../h/list.hpp"
#include "../h/tcb.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/wait_list.hpp"

class _Semaphore
{
private:
    int value;
    // Blocked threads
    List <TCB> blocked;
    bool closed;

public:
    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }

    void* operator new[] (size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }

    void operator delete(void* ptr) noexcept {
        MemoryAllocator::mem_free(ptr);
    }

    void operator delete[] (void* ptr) noexcept {
        MemoryAllocator::mem_free(ptr);
    }

    explicit _Semaphore(int value = 1) : value(value), closed(false) {}
    static _Semaphore* createSemaphore(int value = 1) { return new _Semaphore(value); }

    bool isClosed() const { return this->closed; }

    // Semaphore operations
    int wait();
    int signal();
    int close();
    int timedwait(time_t timeout);
    int tryWait();

    // Value getter
    int getValue() const { return this->value; }
};

#endif