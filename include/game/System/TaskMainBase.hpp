#pragma once

#include "types.hpp"
#include "System/TaskMan.hpp"
#include "System/Task.hpp"

class TaskMainBase : public Task{
public:
    Task* nextTask; // 0x8
    virtual ~TaskMainBase();

    TaskMainBase();
    virtual void vt_10();
    __attribute__((noinline)) void restore(TaskMainBase* thisTask); //TaskMan*, and Task*
};