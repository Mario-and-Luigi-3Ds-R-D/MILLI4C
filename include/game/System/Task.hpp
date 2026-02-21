#pragma once

#include "types.hpp"
#include "system/TaskMan.hpp"

class TaskMan;
class Task{
public:
    TaskMan* mTaskManager;

    virtual void execute();
    virtual ~Task();
};
