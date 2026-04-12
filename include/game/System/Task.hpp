#pragma once

#include "types.hpp"

class TaskMan;
class Task{
public:
    TaskMan* mTaskManager; //0x4

    virtual ~Task();
    virtual void update();

    void term(void);
};

class TaskMan{
public:
    Task* currentTask; //0x00, I think?
    Task* mTask; //0x4
    TaskMan();

    void entry(Task * task);
};

extern TaskMan gTaskMainMan;

class TaskList{
protected:
    TaskList* mListFinished; // 0x4
    TaskList* mListNum; // 0x8
public:
    virtual bool vt_0x4();
    virtual ~TaskList();
    virtual void finish();

    void startList(); //Force ~TaskList to call it instead of copy it.
};

class TaskMainBase : public Task{
public:
    Task* nextTask; // 0x8
    virtual ~TaskMainBase();

    TaskMainBase();
    virtual void vt_10();
    void restore(void); //TaskMan*, and Task*
};