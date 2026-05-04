#pragma once

#include "types.hpp"
#include "System/Job.hpp"
#include "System/BinGlu3AcsIdxHdr.hpp"
#include "nn/os/os_LightEvent.h"

class CtrFUncompSize : public Job{
public:
    nn::os::LightEvent mLightEvent; // 0xc
    int flag2; // 0x14
    int flag3; // 0x18
    BinGlu3AcsIdxHdr mBinHeader;

    virtual void start();
    virtual void term(); // 100%
    virtual JobReturnCode getJobId(); // 100%
};