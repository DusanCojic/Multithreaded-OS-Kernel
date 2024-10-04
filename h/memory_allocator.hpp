#ifndef MEMORY_ALLOCATOR_H
#define MEMORY_ALLOCATOR_H

#include "../lib/hw.h"

// Struct that represents a memory chunk
struct Block {
    size_t size;
    Block* next;
    Block* prev;
};

class MemoryAllocator
{
private:
    // List of free chunks
    static Block* freeMemHead;
    // List of used chunks
    static Block* usedMemHead;

    // Not allowing creating or copying an object of this class (singleton)
    MemoryAllocator() {};
    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator = (const MemoryAllocator&) = delete;

    // Try to join given chunk of memory with adjacent blocks
    static void tryToJoin(Block* block);

public:
    // Allocate memory
    static void* mem_alloc(size_t size);
    // Free allocated memory
    static int mem_free(void *ptr);

    // Initialize allocator
    static void init();
};

#endif