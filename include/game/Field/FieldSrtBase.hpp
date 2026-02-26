#pragma once

#include "game/types.hpp"

class FieldSrtBase {
    /*vtable 0x0*/
    f32 x; // 0x4
    f32 y; // 0x8
    f32 z; // 0xc
    s32 flag4; // 0x10
    s32 flag5; // 0x14
    s32 flag6; // 0x18
    s32 flag7; // 0x1c
    s32 flag8; // 0x20
    s32 flag9; // 0x24, not on ghidra
    s32 flag10; // 0x28
    s32 flag11; // 0x2c
    s32 flag12; // 0x30
    s32 flag13; // 0x34
    u8 unk[0x4];
public:
    virtual ~FieldSrtBase();

    FieldSrtBase(void);
    void getFlags(); //this-> call idfk
};
static_assert(sizeof(FieldSrtBase) == 0x40);