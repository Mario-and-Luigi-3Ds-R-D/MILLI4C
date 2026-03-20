#pragma once

#include "types.hpp"

class CtrThread{
public:
    int mCurrentThreadNum; // 0x4
    int mLastThreadNum; // 0x8
    int mThreadNum; // 0xC
    
    virtual void StartThread();
    virtual ~CtrThread();

    int startCtrThread();
};