#include <System/Task.hpp>

void Task::term(void) {
    if (this->mTaskManager) {
        *(void**)this->mTaskManager = 0;
        this->mTaskManager = 0;
    }
}

// TaskList
//
//

void TaskList::term(){
    if (!this->mListFinished)
        return;

    if (this->mListNum)
        this->mListNum->mListFinished = this->mListFinished;

    this->mListFinished->mListNum = this->mListNum;
    this->mListFinished = 0;
}

// TaskMainBase
//
//


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