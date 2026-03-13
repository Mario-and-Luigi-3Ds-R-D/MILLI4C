#pragma once

#include "types.hpp"
#include "System/TaskMan.hpp"

class TaskMan;
class Task{
public:
    TaskMan* mTaskManager; //0x4

    virtual ~Task();
    virtual void update();

    __attribute__((noinline)) void term(void);
    Task(void);
};
