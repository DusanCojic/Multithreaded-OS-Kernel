#ifndef WAIT_LIST_HPP
#define WAIT_LIST_HPP

#include "../h/tcb.hpp"
#include "../lib/hw.h"

using thread_t = TCB*;

class WaitList
{
private:
    struct Node {
        thread_t tcb;
        time_t time;
        Node* next;

        Node(thread_t tcb, time_t time) : tcb(tcb), time(time), next(0) {}
    };

    static Node* head;

public:

    static void add(thread_t tcb);
    static thread_t remove();
    static void wake();

};

#endif