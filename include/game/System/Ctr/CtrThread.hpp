#pragma once

#include "types.hpp"

class CtrThread{
public:
    int mCurrentThreadNum; // 0x4
    bool mIsActiveThread; // 0x8
    void* mThreadStatus; // 0xC
public:
    virtual void freeThread(); // 100%
    virtual ~CtrThread();
};