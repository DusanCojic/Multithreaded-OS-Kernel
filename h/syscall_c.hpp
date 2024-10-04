#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP

#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"
#include "../h/wait_list.hpp"

enum SYSCALLS : uint64 {
    MEM_ALLOC = 0x01,
    MEM_FREE = 0x02,
    THREAD_CREATE = 0x11,
    THREAD_EXIT = 0x12,
    THREAD_DISPATCH = 0x13,
    SEM_OPEN = 0x21,
    SEM_CLOSE = 0x22,
    SEM_WAIT = 0x23,
    SEM_SIGNAL = 0x24,
    SEM_TIMEDWAIT = 0x25,
    SEM_TRYWAIT = 0x26,
    TIME_SLEEP = 0x31,
    GETC = 0x41,
    PUTC = 0x42,
    PUTC_HANDLER = 0x43
};

using thread_t = TCB*;
using sem_t = _Semaphore*;

void syscall(uint64 syscall_id, ...);

// Memory system calls

void* mem_alloc(size_t bytes);

int mem_free(void* ptr);

// Thread system calls

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();

int time_sleep(time_t time);

// Semaphore system calls

int sem_open(sem_t* handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t handle);

int sem_signal(sem_t handle);

int sem_trywait(sem_t handle);

int sem_timedwait(sem_t handle, time_t timeout);

// Console system calls

char getc();

void putc(char c);

void putc_handler();

#endif