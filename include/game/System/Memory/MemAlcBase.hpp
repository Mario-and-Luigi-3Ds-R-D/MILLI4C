#pragma once

#include "types.hpp"
#include "nn/os/os_CriticalSection.h"

class MemAlcBase{
public:
    virtual void free(uint flags) = 0;
    virtual void vt_0x4(){}
    virtual void vt_0x8(){}
    virtual MemAlcBase* allocCore(uint,uint) = 0;
    static int getOpt(int,bool,uint);

    int mCoreNumber;
    void* mCoreStatus;
    int flag1;
    int flag2;
    nn::os::CriticalSection mCriticalSection;
};