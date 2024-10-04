#include "../h/console.hpp"

BoundedBuffer* _Console::putcBuffer = 0;
BoundedBuffer* _Console::getcBuffer = 0;

void _Console::initConsole() {
    putcBuffer = new BoundedBuffer();
    getcBuffer = new BoundedBuffer();
}

void _Console::PUTC(char c) {
    putcBuffer->append(c);
}

char _Console::GETC() {
    return getcBuffer->take();
}

void _Console::putcHandler() {
    while(((*(char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)) {
        char volatile c = putcBuffer->take();
        *((char*)(CONSOLE_TX_DATA)) = c;
    }
}

void _Console::putcHandlerWrapper(void* arg) {
    while (true) {
        putc_handler();
    }
}

void _Console::console_handler() {
    int volatile code = plic_claim();
    char volatile c;
    if (code == 10) {
        while ((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
            c = *((char*)CONSOLE_RX_DATA);
            getcBuffer->append(c);
        }
        plic_complete(code);
    }
}

void _Console::flush() {
    while (putcBuffer->getCount() > 0) {
        while(((*(char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)) {
            char c = putcBuffer->buffer[putcBuffer->head];
            putcBuffer->head = (putcBuffer->head + 1) % 256;
            putcBuffer->count--;
            *((char*)(CONSOLE_TX_DATA)) = c;
            if (putcBuffer->count <= 0)
                break;
        }
    }
}

