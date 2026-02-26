#pragma once

#include "FieldCA.hpp"
#include "game/types.hpp"
//#include "nn/math/Matrix34.h"

class FieldObjBase{ //FieldObjBase vtable @ 0x006b38ac, all flags unknown.
    f32 flag1; // 0x4
    f32 flag2; // 0x8
    f32 flag3; // 0xc
    f32 flag4; // 0x10
    f32 flag5; // 0x14
    f32 flag6; // 0x18
    f32 flag7; // 0x1c
    f32 flag8; // 0x20
    f32 flag9; // 0x24
    f32 flag10; // 0x28
    f32 flag11; // 0x2c
    f32 flag12; // 0x30
    f32 flag13; // 0x34
    f32 flag14; // 0x38
    f32 flag15; // 0x3c
    u8 unk1[0x4]; // 0x40
    f32 flag16; // 0x44
    f32 flag17; // 0x48
    f32 flag18; // 0x4c
    f32 flag19; // 0x50
    u8 unk2[0x4]; //0x54
    f32 unkflag; // 0x58
    u8 unk3[0x8]; // 0x5c
    f32 flag20; // 0x64, not sure if it exists but ghidra shows it does.
    f32 flag21; // 0x68
    f32 flag22; // 0x6c
    f32 flag23; // 0x70
    f32 flag24; // 0x74
    f32 flag25; // 0x78
    f32 flag26; // 0x7c
    f32 flag27; // 0x80
    f32 flag28; // 0x84
    f32 flag29; // 0x88
    u8 unk4[0x4]; // 0x8c
    f32 flag30; // 0x90
    f32 flag31; // 0x94
    f32 flag32; // 0x98
    f32 flag33; // 0x9c
public:
    virtual ~FieldObjBase();

    FieldObjBase(void);
};

static_assert(sizeof(FieldObjBase) == 0xa8, "Nice!");

class FieldObjCA : public FieldObjBase { //FieldObjCA vtable @ 0x006b0504
    int flag1;
    FieldCA* mFieldCA = nullptr;
    int flag2;
//    nn::math::MTX34* mMtx = nullptr;
public:
    virtual ~FieldObjCA();

    FieldObjCA(void);
};

static_assert(sizeof(FieldObjCA) == 0xc4, "Nice!"); 

class FieldObjMdl : public FieldObjBase{ //FieldObjMdl vtable @ 0x006b24b8, imports from some more too, COMEBACK TO
public:
    virtual void ModelInfo(); //LAB_001e9494
    //Need to document anything after FUN_005c82b4
    virtual ~FieldObjMdl();

    FieldObjMdl(void);
};
static_assert(sizeof(FieldObjMdl) == 0x12c, "Max in Ghidra is 0x130. -4 for vtable"); 