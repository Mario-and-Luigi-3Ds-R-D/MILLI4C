#pragma once

#include "types.hpp"
#include "System/Memory/MemAlc.hpp"
#include "nn/os/os_CriticalSection.h"

template <typename MemAlcH>
class MemAlcLockImpl : public MemAlc{ // public MemAlcF
protected:
    nn::os::CriticalSection mCriticalSection; // 0x14
public:

    MemAlcLockImpl();
    virtual void free(uint flags);
    virtual MemAlcBase* allocCore(uint, uint);
};
