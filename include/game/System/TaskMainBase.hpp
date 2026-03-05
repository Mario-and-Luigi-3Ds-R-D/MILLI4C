#pragma once

#include "game/types.hpp"
#include "System/TaskMan.hpp"
#include "System/Task.hpp"

class Task;
class TaskMainBase : public Task{
    uint nextTask; // 0x8
public:
    virtual ~TaskMainBase();

    TaskMainBase();
    void restore(uint next, Task base){
}
};