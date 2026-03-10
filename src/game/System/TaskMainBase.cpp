#include <System/TaskMainBase.hpp>
#include <System/Task.hpp>
#include <System/TaskMan.hpp>

//Non-Matching
TaskMainBase::~TaskMainBase(){
    void* param_2;

    this->restore(this);
    this->term(this, param_2);
}

void TaskMainBase::vt_10(){
    return;
}

void TaskMainBase::restore(TaskMainBase* thisTask) {
    TaskMan* manager = thisTask->mTaskManager;
    Task* next = thisTask->nextTask;
    thisTask->nextTask = 0;
    
    if (manager != 0) {
        manager->currentTask = 0;
        thisTask->mTaskManager = 0;
    }
    if (next != 0) {
        manager->currentTask = next;
        next->mTaskManager = manager;
    }
}