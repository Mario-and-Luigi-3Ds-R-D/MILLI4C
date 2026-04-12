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
    virtual void init(int, bool); // 92%
    virtual void free(void*); // 100%
    void start(MemAlcBase*, int); // 100% in dc

    CtrNwAlc(void); // 100%
};

class CtrNullNwAlc{
public:
    virtual ~CtrNullNwAlc();
    virtual int init();
    virtual void free();
};