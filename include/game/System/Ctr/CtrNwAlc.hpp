#pragma once

#include "game/types.hpp"

class CtrNwAlc {
    s32  mCurrentAlc;
    u32  mOpt;
public:
    virtual ~CtrNwAlc();

    CtrNwAlc(void);
    void init();
};

class CtrNullNwAlc{
public:
    virtual ~CtrNullNwAlc();

    CtrNullNwAlc();
    int init();
    void FUN_0021f5e0();
};