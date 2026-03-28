#include <System/Task.hpp>
// nonmatch
Task::~Task(){
    this->term();
}
// end nonmatch

void Task::update(){
        ((void (*)(Task*))(*(void***)this)[2])(this);
}

void Task::term(void) {
    if (mTaskManager) {
        *(void**)mTaskManager = 0;
        mTaskManager = 0;
    }
}

// TaskList

TaskList::~TaskList(void) {
    startList();
}

bool TaskList::vt_0x4(){
    return 0;
}

void TaskList::finish(){
    ((void (*)(TaskList*))(*(void***)this)[3])(this);
}

void TaskList::startList()
{
    if (!mListFinished)
        return;
    if (mListNum)
        mListNum->mListFinished = mListFinished;
    mListFinished->mListNum = mListNum;
    mListFinished = 0;
}

// TaskMainBase

// Start Non-Matching
TaskMainBase::~TaskMainBase(void) {
    Task* param_2;
    TaskMainBase::restore();
    Task::term();
}
// End NonMatch

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

// TaskMan

void TaskMan::entry(Task* task) {
    this->currentTask = task;
    task->mTaskManager = this;
    return;
}