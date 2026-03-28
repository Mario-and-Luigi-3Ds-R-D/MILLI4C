#pragma once

#include "types.hpp"
#include "System/Job.hpp"

class CtrFUncompSize : public Job{
    int mLightEvent; // 0xc
    int flag2; // 0x14
    int flag3; // 0x18
    int flag4; // 0x1c
public:
    virtual void start();
    virtual void term();
    virtual int vt_0xc();
};