#include <System/TaskMainBase.hpp>
#include <System/Task.hpp>
#include <System/TaskMan.hpp>

TaskMainBase::~TaskMainBase(){
    this->restore();
    this->term(this);
}

//matching
void TaskMainBase::vt_10(){
    return;
}

void TaskMainBase::restore(){
}