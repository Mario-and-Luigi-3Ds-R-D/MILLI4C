#include <System/Task.hpp>
#include <System/TaskMan.hpp>
//nonmatch
Task::~Task(){
    int* param_2;
    this->term(this, param_2);
}

void Task::update(){
        ((void (*)(Task*))(*(void***)this)[2])(this);
}

void Task::term(void*, void*) {
    if (mTaskManager) {
        *(void**)mTaskManager = 0;
        mTaskManager = 0;
    }
}