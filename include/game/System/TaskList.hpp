#pragma once

#include "types.hpp"

class TaskList{
    TaskList* mListFinished; // 0x4
    TaskList* mListNum; // 0x8
public:
    virtual bool vt_0x4();
    virtual ~TaskList();
    virtual void finish();

    __attribute__((noinline)) void startList(); //Force ~TaskList to call it instead of copy it.
};