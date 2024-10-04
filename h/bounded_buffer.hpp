#ifndef BUFFER_HPP
#define BUFFER_HPP

#include "../h/syscall_c.hpp"

class BoundedBuffer
{
private:
    sem_t itemAvailable;
    sem_t spaceAvailable;
    char buffer[256];
    int head = 0;
    int tail = 0;
    int count = 0;

public:
    BoundedBuffer();
    void append(char c);
    char take();
    int getCount() const { return this->count; }

    friend class _Console;
    friend class _Semaphore;
};

#endif