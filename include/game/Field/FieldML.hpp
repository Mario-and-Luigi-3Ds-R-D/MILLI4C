#pragma once

#include "types.hpp"

class FieldML{
    s32 flag1; // 0x4
    s32 flag2; // 0x8
    s32 flag3; // 0xc
    s32 flag4; // 0x10
    s32 flag5; // 0x14
    s32 flag6; // 0x18
    s32 flag7; // 0x1c
    s32 flag8; // 0x20
    s32 flag9; // 0x24
    s32 flag10; // 0x28
    s32 flag11; // 0x2c
    s32 flag12; // 0x30
    s32 flag13; // 0x34
    s32 flag14; // 0x38
    ushort flag15; // 0x3c
    ushort flag16; // 0x3e
    ushort flag17; // 0x40
    ushort flag18; // 0x42
    u8 unkpad[0xe];
public:
    virtual ~FieldML();

    FieldML(void);
    GET_MODE getFieldMode();
};
static_assert(sizeof(FieldML) == 0x58); // class is 0x50

//Used in FUN_005ef684/getFieldMode
enum GET_MODE{
    REAL = 0,
    DREAM = 1,
};