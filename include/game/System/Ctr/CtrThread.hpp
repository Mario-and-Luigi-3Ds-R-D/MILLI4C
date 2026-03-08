#pragma once

#include "game/types.hpp"

class CtrThread{
    s32 mOsThead; // 0x4, temp until nn::os::sdk
    int mThreadNum; // 0x8
public:
    virtual ~CtrThread();

    CtrThread();
};