#pragma once

#include "game/types.hpp"

class CtrModule{
    s32 isLoaded; // 0x4, in __deallocating
    u8 pad[0x14]; // 0x8
    s32 flag1; // 0x1c, in __deallocating
    s32 flag2; // 0x20, in __deallocating
public:
    virtual ~CtrModule();

    CtrModule(void);
};