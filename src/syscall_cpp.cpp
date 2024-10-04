#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    return mem_alloc(size);
}

void* operator new[] (size_t size) {
    return mem_alloc(size);
}

void operator delete(void* ptr) noexcept {
    mem_free(ptr);
}

void operator delete[] (void* ptr) noexcept {
    mem_free(ptr);
}

Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
}

int Thread::start() {
    if (body)
        return thread_create(&this->myHandle, this->body, this->arg);
    else
        return thread_create(&this->myHandle, wrapper, this);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

Thread::~Thread() {
    delete this->myHandle;
}

Thread::Thread() {
    this->body = nullptr;
    this->arg = nullptr;
}

void Thread::wrapper(void* arg) {
    Thread* t = (Thread*)arg;
    t->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(this->myHandle);
}

int Semaphore::wait() {
    return sem_wait(this->myHandle);
}

int Semaphore::signal() {
    return sem_signal(this->myHandle);
}

int Semaphore::timedWait(time_t time) {
    return sem_timedwait(this->myHandle, time);
}

int Semaphore::tryWait() {
    return sem_trywait(this->myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : period(period) {}

void PeriodicThread::run() {
    while (true) {
        this->periodicActivation();
        time_sleep(period);
    }
}

void PeriodicThread::terminate() {
    thread_exit();
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
