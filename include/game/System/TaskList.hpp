#pragma once

#include "game/types.hpp"

class TaskList{
    int flag1; // 0x4
    int flag2; // 0x8
public: 
    virtual ~TaskList();

    TaskList();
};