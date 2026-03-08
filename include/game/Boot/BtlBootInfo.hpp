#pragma once

#include "game/types.hpp"

class BtlBootInfo{
    int unk_0x4;
public:
    virtual ~BtlBootInfo(); //<-- maybe wrong

    BtlBootInfo();
    void reset(void);
};

extern BtlBootInfo gBtlBootInfo;