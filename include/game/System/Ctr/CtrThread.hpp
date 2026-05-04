#pragma once

#include "types.hpp"
#include "nn/os/os_Thread.h"

class CtrThread{
public:
    nn::os::Thread mCurrentThread; // 0x4
    nn::os::Thread mThread; // 0xC
public:
    virtual void freeThread(); // 100%
    virtual ~CtrThread();
};