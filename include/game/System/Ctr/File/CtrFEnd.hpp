#pragma once

#include "types.hpp"

class CtrFEnd{
    int flag1; // 0x4 signal light event
public:
    virtual ~CtrFEnd();

    void signal();
};