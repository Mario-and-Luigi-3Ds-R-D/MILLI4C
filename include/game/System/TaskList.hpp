#pragma once

#include "game/types.hpp"

class TaskList{
    int mListFinished; // 0x4
    int mListNum; // 0x8
public: 
    virtual ~TaskList();

    TaskList();
    bool FUN_005f1268();
    void finish();
};