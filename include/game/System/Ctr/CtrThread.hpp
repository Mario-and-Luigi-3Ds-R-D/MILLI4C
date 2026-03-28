#pragma once

#include "types.hpp"

class CtrThread{
public:
    int mCurrentThreadNum; // 0x4
    bool mLastThreadNum; // 0x8
    int mThreadNum; // 0xC
    
    virtual void StartThread(); // 100%
    virtual ~CtrThread();

    int startCtrThread(); // 100%
};