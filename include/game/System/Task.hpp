#pragma once

#include "types.hpp"

class TaskMan;
class Task{
public:
    TaskMan* mTaskManager; //0x4

    virtual void update() = 0;
    virtual ~Task();
    virtual void destroy();
    virtual void vt_0x10() = 0;

    void term(void);
};

class TaskMan{
public:
    Task* currentTask; //0x00, I think?
    Task* mTask; //0x4

    void entry(Task * task);
};

extern TaskMan gTaskMainMan;

class TaskList{ // public : Task ..?
protected:
    TaskList* mListFinished; // 0x4
    TaskList* mListNum; // 0x8
public:
    virtual bool isFinish();
    virtual ~TaskList();
    virtual void destroy();

    void term();
};

class TaskMainBase : public Task{
public:
    Task* nextTask; // 0x8
    virtual void update() = 0;
    virtual ~TaskMainBase();
    virtual void vt_0x10();
    
    void restore(void); //TaskMan*, and Task*
};