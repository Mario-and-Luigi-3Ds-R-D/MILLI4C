#pragma once

#include "types.hpp"
#include "System/TaskMan.hpp"
#include "System/Task.hpp"

class TaskMainBase : public Task{
    uint nextTask; // 0x8
public:
    virtual ~TaskMainBase();

    TaskMainBase();
    virtual void vt_10();
    void restore(); //TaskMan*, and Task*
};