#pragma once

#include "types.hpp"
#include "nn/os/os_Thread.h"

class CtrThread : public nn::os::Thread {
public:
    s32 mThreadNumber;
public:
    CtrThread() : mThreadNumber(0){}
    virtual void freeThread(); // 100%
    virtual ~CtrThread();
};