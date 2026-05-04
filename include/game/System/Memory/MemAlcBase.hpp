#pragma once

#include "types.hpp"
#include "nn/os/os_CriticalSection.h"

class MemAlcBase{
public:
    void* mCoreNumber; // 0x4
    void* mCoreStatus; // 0x8
    void* mHeap; // 0xc
    int flag2; // 0x10
public:
    virtual void free(uint flags) = 0;
    virtual void vt_0x4(){}
    virtual void vt_0x8(){}
    virtual MemAlcBase* allocCore(uint,uint) = 0;
    
    static int GetOpt(int,bool,uint);
};