#include <System/Task.hpp>
#include <System/TaskMan.hpp>

Task::~Task(){
    Task::term(this);
}

void Task::update(){
}

void Task::term(Task* ){
}