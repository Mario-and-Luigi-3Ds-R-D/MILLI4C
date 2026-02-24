#pragma once

#include "types.hpp"
#include "system/TaskMan.hpp"

class TaskMan;
class Task{
public:
    TaskMan* mTaskManager; //0x4

    virtual void execute();
    virtual ~Task();
};
