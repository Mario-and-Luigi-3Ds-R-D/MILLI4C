#pragma once

#include "game/types.hpp"

class CtrLoadModule{
    s32 flag1; // 0x4
    s32 flag2; // 0x8
    u8 pad[0x1c]; // 0xc
    s32 flag3; // 0x24
    u8 unk[0x4]; // 0x28
    s32 flag4; // 0x2c
    u8 pad2[0x8];
    s32 flag5; // 0x38
public:
    CtrLoadModule(void);
};
static_assert(sizeof(CtrLoadModule) == 0x3c); //class is 0x3c