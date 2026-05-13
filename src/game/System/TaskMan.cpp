#include <System/Task.hpp>

TaskMan gTaskMainMan;

/* TaskMan::entry(TASKOBJ* task) */

void TaskMan::entry(Task* task) {
    this->currentTask = task;
    task->mTaskManager = this;
}