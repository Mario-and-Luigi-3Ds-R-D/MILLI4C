#pragma once

#include "game/types.hpp"

class CtrNwAlc {
    s32  mCurrentAlc;
    s32  mOpt;
public:
    virtual ~CtrNwAlc();

    CtrNwAlc(void);
    void init();
};

