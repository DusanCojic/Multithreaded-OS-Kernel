#include "../h/memory_allocator.hpp"
#include "../lib/mem.h"

Block* MemoryAllocator::freeMemHead = nullptr;
Block* MemoryAllocator::usedMemHead = nullptr;

void MemoryAllocator::init() {
    freeMemHead = (Block*)((char*)HEAP_START_ADDR);

    // At the start all memory is free
    freeMemHead->size = ((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/ MEM_BLOCK_SIZE;

    freeMemHead->next = nullptr;
    freeMemHead->prev = nullptr;

    // There is no used memory at the start
    usedMemHead = nullptr;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    if (size == 0)
        return nullptr;

    // Given size in bytes converted to size in MEM_BLOCKS
    size_t sizeInBlocks = (size + sizeof(Block)) % MEM_BLOCK_SIZE ? (size + sizeof(Block)) / MEM_BLOCK_SIZE + 1 : (size + sizeof(Block)) / MEM_BLOCK_SIZE;

    // Find free fragment with required size using best fit algorithm
    Block* freeBlock = nullptr;
    for (Block* current = freeMemHead; current != nullptr; current = current->next) {
        if (current->size >= sizeInBlocks) {
            freeBlock = current;
            break;
        }
    }

    // Didn't find large enough fragment
    if (!freeBlock)
        return nullptr;

    // Allocate new fragment of memory
    Block* allocated = freeBlock;
    if (freeBlock->size > sizeInBlocks) {
        // Creating a new free fragment
        Block* newFreeBlock = (Block*)((char*)freeBlock + sizeInBlocks * MEM_BLOCK_SIZE);

        newFreeBlock->size = freeBlock->size - sizeInBlocks;
        newFreeBlock->next = freeBlock->next;
        newFreeBlock->prev = freeBlock->prev;

        // Update the free fragments list
        if (newFreeBlock->prev)
            newFreeBlock->prev->next = newFreeBlock;
        else
            freeMemHead = newFreeBlock;

        if (newFreeBlock->next)
            newFreeBlock->next->prev = newFreeBlock;
    }
    else {
        if (freeBlock->prev)
            freeBlock->prev->next = freeBlock->next;
        else
            freeMemHead = freeBlock->next;

        if (freeBlock->next)
            freeBlock->next->prev = freeBlock->prev;
    }

    // Update used fragments list
    allocated->size = sizeInBlocks;
    allocated->next = nullptr;
    allocated->prev = nullptr;

    // Insert new used fragment in ascending order by addresses
    if (!usedMemHead)
        usedMemHead = allocated;
    else if ((char*)allocated < (char*)usedMemHead) {
        // Before current head of the list
        usedMemHead->prev = allocated;
        allocated->next = usedMemHead;
        usedMemHead = allocated;
    }
    else {
        // Find its position
        Block* temp = usedMemHead;
        while (temp->next) {
            if ((char*)allocated < (char*)temp->next)
                break;
            temp = temp->next;
        }

        // Insert it in founded position
        allocated->next = temp->next;
        allocated->prev = temp;
        if (temp->next)
            temp->next->prev = allocated;
        temp->next = allocated;
    }

    // Return address which is after the Block struct
    return (void*)((char*)allocated + sizeof(Block));
}

int MemoryAllocator::mem_free(void *ptr) {
    // There is no used fragment
    if (!usedMemHead) return -1;
    // Trying to free null pointer
    if (!ptr) return -2;
    // ptr address out of heap bounds
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR)
        return -3;
    // Trying to free fragment that is before first element of used fragments list
    if ((char*)ptr < (char*)usedMemHead)
        return -4;

    // Get the start of a used fragments list element
    Block* current = (Block*)((char*)ptr - sizeof(Block));
    // Find it in used fragments list
    if ((char*)current == (char*)usedMemHead) {
        usedMemHead = usedMemHead->next;
        if (usedMemHead) usedMemHead->prev = nullptr;
    }
    else {
        current->prev->next = current->next;
        if (current->next)
            current->next->prev = current->prev;
    }

    // Insert new free fragment into a free fragments list
    current->next = nullptr;
    current->prev = nullptr;

    if (!freeMemHead)
        freeMemHead = current;
    else if ((char*)current < (char*)freeMemHead) {
        current->next = freeMemHead;
        freeMemHead->prev = current;
        freeMemHead = current;
        tryToJoin(freeMemHead);
    }
    else {
        // Find the position
        Block* temp = freeMemHead;
        while (temp->next) {
            if ((char*)current < (char*)temp)
                break;

            temp = temp->next;
        }

        // Insert it at founded position
        current->prev = temp;
        current->next = temp->next;
        if (temp->next)
            temp->next->prev = current;
        temp->next = current;

        tryToJoin(current);
        tryToJoin(temp);
    }

    return 0;
}

void MemoryAllocator::tryToJoin(Block *block) {
    if (block->next) {
        if (((char*)block + block->size * MEM_BLOCK_SIZE + sizeof(Block)) == (char*)block->next) {
            block->size += block->next->size + sizeof(Block);
            block->next = block->next->next;
            if (block->next)
                block->next->prev = block;
        }
    }
}