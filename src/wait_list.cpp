#include "../h/wait_list.hpp"

WaitList::Node* WaitList::head = 0;

void WaitList::add(thread_t tcb) {
    Node* new_node = new Node(tcb, tcb->getSleepingTime());
    Node* current = head;
    Node* previous = nullptr;

    while (current) {
        if (current->time >= new_node->time)
            break;
        new_node->time -= current->time;

        previous = current;
        current = current->next;
    }

    if (head == current)
        head = new_node;
    if (previous)
        previous->next = new_node;

    new_node->next = current;
    if (new_node->next)
        new_node->next->time -= new_node->time;
}

thread_t WaitList::remove() {
    Node* oldHead = head;
    thread_t ret = oldHead->tcb;
    head = head->next;
    delete oldHead;
    return ret;
}

void WaitList::wake() {
    if (head)
        head->time--;

    while (head && head->time <= 0) {
        thread_t current = WaitList::remove();
        if (current && current->isSleeping()) {
            current->setSleep(false);
            Scheduler::put(current);
        }
    }
}
