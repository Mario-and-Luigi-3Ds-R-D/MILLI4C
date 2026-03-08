#pragma once

#include "System/Task.hpp"

class Task;
class TaskMan{
    Task* currentTask; //0x00, I think?
    Task* mTask; //0x4
public:
    TaskMan();

    void entry(Task * task);
};

extern TaskMan gTaskMainMan;