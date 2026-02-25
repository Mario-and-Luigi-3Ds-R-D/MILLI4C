#pragma once

#include "types.hpp"
#include "system/TaskMan.hpp"
#include "system/Task.hpp"

class Task;
class TaskMainBase : public Task{
    uint nextTask; //0x8
public:
    virtual ~TaskMainBase();

    TaskMainBase();
    void restore(uint next, Task base){
}
};