#pragma once

#include "types.hpp"

class CtrNwAlc {
    s32  mSetAlc;
    u32  mOpt;
public:
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