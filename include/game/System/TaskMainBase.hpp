#pragma once

#include "types.hpp"
#include "TaskMan.hpp"
#include "Task.hpp"

class Task;
class TaskMainBase{
    Task* mBase;
    uint nextTask; //0x8
public:
    void restore(uint next, Task base){
}
};