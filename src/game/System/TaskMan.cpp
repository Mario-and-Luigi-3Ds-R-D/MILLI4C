#pragma once

#include <system/Task.hpp>
#include <system/TaskMan.hpp>

void TaskMan::entry(Task* task) {
    this->currentTask = task;
    task->mTaskManager = this;
    return;
}