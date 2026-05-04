#pragma once

#include "types.hpp"
#include "System/Memory/MemAlcBase.hpp"
#include "nw/os/os_Memory.h"

// -COMPLETED NAMESPACES-

class CtrNwAlc : public nw::os::IAllocator{
protected:
    MemAlcBase* mSetAlc;
    u32  mOperator;
public:
    virtual ~CtrNwAlc(); // 100%
    virtual void* Alloc(size_t, u8); // 92%
    virtual void Free(void*); // 100%
    void init(MemAlcBase*, int); // 100% in dc

    CtrNwAlc(void); // 100%
};

class CtrNullNwAlc{
public:
    virtual ~CtrNullNwAlc();
    virtual void* Alloc();
    virtual void Free();
};