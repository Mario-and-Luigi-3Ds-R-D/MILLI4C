#include <System/TaskMainBase.hpp>
#include <System/Task.hpp>
#include <System/TaskMan.hpp>

//Non-Matching
TaskMainBase::~TaskMainBase(void) {
    Task* param_2;
    TaskMainBase::restore();
    Task::term();
}

void TaskMainBase::vt_10(){
    return;
}

void TaskMainBase::restore(void){
    TaskMan* manager = this->mTaskManager;
    Task* next = this->nextTask;
    this->nextTask = 0;
    
    if (manager != 0) {
        manager->currentTask = 0;
        this->mTaskManager = 0;
    }
    if (next != 0) {
        manager->currentTask = next;
        next->mTaskManager = manager;
    }
}