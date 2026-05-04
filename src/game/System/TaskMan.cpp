#include <System/Task.hpp>

TaskMan gTaskMainMan;

void TaskMan::entry(Task* task) {
    this->currentTask = task;
    task->mTaskManager = this;
}