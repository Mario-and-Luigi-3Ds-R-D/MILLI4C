#pragma once

#include "game/types.hpp"

class CtrFUncompSize{
    s32 size; // 0x4
    s32 flag1; // 0x8
    s32 mSignalLight; // 0xc, nnsignal light
    s32 flag2; // 0x10
    s32 flag3; // 0x14
    s32 flag4; // 0x18
public:
    virtual ~CtrFUncompSize();

    int FUN_002cf38c(uint param_1, int param_2); // thiscall
    void signalEvent();
    Unknown_x4 FUN_005deb44();
};