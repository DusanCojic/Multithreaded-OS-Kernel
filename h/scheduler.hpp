#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "list.hpp"

class TCB;

class Scheduler
{
public:
    static List<TCB> readyCoroutineQueue;

public:
    static TCB *get();

    static void put(TCB* tcb);

};

#endif
