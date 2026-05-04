#include <System/Task.hpp>

Task::~Task(){
    this->term();
}
// MATCH
void Task::destroy(){
    ((void (*)(Task*))(*(void***)this)[2])(this); // Call Task::__deallocating, or ~Task.
}

__attribute__((noinline)) void Task::term(void) {
    if (this->mTaskManager) {
        *(void**)this->mTaskManager = 0;
        this->mTaskManager = 0;
    }
}

// TaskList
//
//

bool TaskList::isFinish(){
    return 0;
}

TaskList::~TaskList(void) {
    this->term();
}

void TaskList::destroy(){
    ((void (*)(TaskList*))(*(void***)this)[3])(this); // Call TaskList::__deallocating, or ~TaskList.
}

__attribute__((noinline)) void TaskList::term(){
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


TaskMainBase::~TaskMainBase(void) {
    this->TaskMainBase::restore();
}

void TaskMainBase::vt_0x10(){
    return;
}

__attribute__((noinline)) void TaskMainBase::restore(void){
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