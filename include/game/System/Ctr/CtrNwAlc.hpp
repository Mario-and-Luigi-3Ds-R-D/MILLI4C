#pragma once

#include "types.hpp"
#include "System/Memory/MemAlcBase.hpp"

// -COMPLETED NAMESPACES-

class CtrNwAlc {
public:
    MemAlcBase* mSetAlc;
    u32  mOpt;

    virtual ~CtrNwAlc();
    virtual void init(int, bool);
    virtual void free(int);
    static void start(int, int, int);

    CtrNwAlc(void);
};

class CtrNullNwAlc{
public:

    virtual ~CtrNullNwAlc();
    virtual int init();
    virtual void free();
};