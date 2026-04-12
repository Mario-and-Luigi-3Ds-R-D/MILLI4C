#pragma once

#include "types.hpp"
#include "System/Job.hpp"
#include "nn/os/os_LightEvent.h"

class CtrFUncompSize : public Job{
    nn::os::LightEvent mLightEvent; // 0xc
    int flag2; // 0x14
    int flag3; // 0x18
    int flag4; // 0x1c
public:
    virtual void start();
    virtual void term();
    virtual JobReturnCode getJobId(); // 100%
};