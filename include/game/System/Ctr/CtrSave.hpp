#pragma once

#include "types.hpp"
//nn::fs::IPositionAble

class CtrSaveFile{ // Most likely incorrect
    int flag2; // 0x4
    int mCloseFile; // 0x8
public: 
    virtual ~CtrSaveFile();

    CtrSaveFile();
};

class CtrSaveFormat{
    s32 flag1; // 0x4
    s32 flag2; // 0x8
    s32 flag3; // 0xc
    s32 flag4; // 0x10
    s32 flag5; // 0x14
public:
    virtual ~CtrSaveFormat();

    CtrSaveFormat();
    void FUN_0011c7bc(int* param_1, bool param_2); //this call
    uint FUN_001c830();
    Unknown_x4 FUN_005ce604();
};

class CtrSaveRead{
    s32 flag1; // 0x4
    s32 flag2; // 0x8
    s32 flag3; // 0xc
    s32 flag4; // 0x10
    s32 flag5; // 0x14
    s32 flag6; // 0x18
    s32 flag7; // 0x1c
    s32 flag8; // 0x20
public:
    virtual ~CtrSaveRead();

    CtrSaveRead();
    Unknown_x4 FUN_001e00f8();
    void FUN_005c7498();
};

class CtrSaveWrite{
    s32 flag1; // 0x4
    s32 flag2; // 0x8
    u8 pad1[4]; // 0xc
    s32 flag3; // 0x10
    u8 pad2[4]; // 0x14
    s32 flag4; // 0x18
    s32 flag5; // 0x1c
    s32 flag6; // 0x20
public:
    virtual ~CtrSaveWrite();

    CtrSaveWrite();
    void start(); //lots of params man
    Unknown_x4 FUN_005c9434();
};