#include "../h/bounded_buffer.hpp"

BoundedBuffer::BoundedBuffer() {
    //this->buffer = (char*) MemoryAllocator::mem_alloc(256 * sizeof(char));
    sem_open(&itemAvailable, 0);
    sem_open(&spaceAvailable, 256);
}

char BoundedBuffer::take() {
    itemAvailable->wait();
    char c = buffer[head];
    head = (head + 1) % 256;
    count--;
    spaceAvailable->signal();
    return c;
}

void BoundedBuffer::append(char c) {
    if (spaceAvailable->tryWait() == 1)
        return;

    buffer[tail] = c;
    tail = (tail + 1) % 256;
    count++;
    itemAvailable->signal();
}
