#ifndef TCP_HPP
#define TCP_HPP

#include "../lib/hw.h"
#include "../h/scheduler.hpp"
#include "../h/riscv.hpp"
#include "../h/memory_allocator.hpp"

// Thread Control Block
class TCB
{
private:
    using Body = void (*)(void*);
    Body body;
    uint64* stack;

    // Thread context struct
    struct Context {
        uint64 ra; // Return address
        uint64 sp; // Stack pointer
    };

    // Thread context
    Context context;
    bool finished;
    bool blocked;
    uint64 timeSlice;
    time_t sleepingTime;
    bool sleep;
    void* arg;

    static void contextSwitch(Context* oldContext, Context* newContext);

    TCB(Body body, void* arg, uint64 timeSlice) :
            body(body),
            stack(body ? (uint64*)MemoryAllocator::mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
            context({(uint64)&threadWrapper, stack ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0}),
            finished(false),
            blocked(false),
            timeSlice(timeSlice),
            sleepingTime(0),
            sleep(false),
            arg(arg)
    { if (body) Scheduler::put(this); }

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

    static TCB* createThread(Body body, void* arg, uint64 timeSlice);

    // Getter and setter for finished
    bool isFinished() const { return this->finished; }
    void setFinished(bool value) { this->finished = value; }

    // Getter and setter for blocked
    bool isBlocked() const { return this->blocked; }
    void setBlocked(bool value) { this->blocked = value; }

    // Getter for time slice
    uint64 getTimeSlice() const { return this->timeSlice; }
    static uint64 timeSliceCounter;

    // Sleeping getters and setters
    void setSleepingTime(time_t time) { this->sleepingTime = time; }
    time_t getSleepingTime() const { return this->sleepingTime; }

    void setSleep(bool val) { this->sleep = val; }
    bool isSleeping() const { return this->sleep; }

    static void dispatch();

    static void threadWrapper();

    static TCB* running;
    static void yield();

    ~TCB() { delete this->stack; }
};


#endif