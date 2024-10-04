#include "../h/syscall_c.hpp"

void syscall(uint64 syscall_id, ...) {
    __asm__ volatile ("ecall");
}

void* mem_alloc(size_t bytes) {
    syscall(SYSCALLS::MEM_ALLOC, bytes);

    // Load the return value
    void* ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return ret;
}

int mem_free(void* ptr) {
    // Load system call id and parameter to the register
    syscall(SYSCALLS::MEM_FREE, ptr);

    // Load the return value
    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    syscall(SYSCALLS::THREAD_CREATE, handle, start_routine, arg);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

int thread_exit() {
    syscall(SYSCALLS::THREAD_EXIT);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

void thread_dispatch() {
    syscall(SYSCALLS::THREAD_DISPATCH);
}

int time_sleep(time_t time) {
    syscall(SYSCALLS::TIME_SLEEP, time);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

int sem_open(sem_t* handle, unsigned init) {
    syscall(SYSCALLS::SEM_OPEN, handle, init);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

int sem_close(sem_t handle) {
    syscall(SYSCALLS::SEM_CLOSE, handle);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

int sem_wait(sem_t handle) {
    syscall(SYSCALLS::SEM_WAIT, handle);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

int sem_signal(sem_t handle) {
    syscall(SYSCALLS::SEM_SIGNAL, handle);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

int sem_trywait(sem_t handle) {
    syscall(SYSCALLS::SEM_TRYWAIT, handle);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

int sem_timedwait(sem_t handle, time_t timeout) {
    syscall(SYSCALLS::SEM_TIMEDWAIT, handle, timeout);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (int)ret;
}

char getc() {
    syscall(SYSCALLS::GETC);

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    return (char)ret;
}

void putc(char c) {
    syscall(SYSCALLS::PUTC, c);
}

void putc_handler() {
    syscall(SYSCALLS::PUTC_HANDLER);
}