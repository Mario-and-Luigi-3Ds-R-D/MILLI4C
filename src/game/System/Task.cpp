#include <System/Task.hpp>
#include <System/TaskMan.hpp>
//nonmatch
Task::~Task(){
    this->term();
}

void Task::update(){
        ((void (*)(Task*))(*(void***)this)[2])(this);
}

void Task::term(void) {
    if (mTaskManager) {
        *(void**)mTaskManager = 0;
        mTaskManager = 0;
    }
}