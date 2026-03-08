#pragma once

#include "types.hpp"

class TaskList{
    int mListFinished; // 0x4
    int mListNum; // 0x8
public: 
    virtual ~TaskList();

    TaskList();
    bool vt_0x4();
    void finish();
};