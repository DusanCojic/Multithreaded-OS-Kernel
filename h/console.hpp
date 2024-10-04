#ifndef CONSOLE_HPP
#define CONSOLE_HPP

#include "../h/bounded_buffer.hpp"
#include "../lib/hw.h"
#include "../h/memory_allocator.hpp"

class _Console
{
private:
    static BoundedBuffer* putcBuffer;
    static BoundedBuffer* getcBuffer;

    _Console() {}
    _Console(const _Console&) = delete;
    _Console& operator = (const _Console&) = delete;

public:

    static void initConsole();

    static void PUTC(char c);
    static char GETC();

    static void putcHandler();
    static void putcHandlerWrapper(void* arg);
    static void console_handler();
    static void flush();
};

#endif