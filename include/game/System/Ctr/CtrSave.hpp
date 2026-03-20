#pragma once

#include "types.hpp"
#include "System/Job.hpp"
//nn::fs::IPositionAble

class CtrSaveFile{ // Most likely incorrect
    int flag2; // 0x4
    int mCloseFile; // 0x8
public: 
    virtual ~CtrSaveFile();
    CtrSaveFile();
};

class CtrSaveFormat {
    s32 flag1; // 0x4
    s32 flag2; // 0x8
    s32 flag3; // 0xc
    s32 flag4; // 0x10
    s32 flag5; // 0x14
public:
    void close(int*, bool); //this call
    virtual uint start(int, int, int); // int params are temp
    virtual int* FUN_005ce604(); // enum
};

class CtrSaveRead : public Job{
    s32 flag2; // 0x10
    s32 flag3; // 0x14
    s32 flag4; // 0x18
    s32 flag5; // 0x1c
    s32 flag6; // 0x20
public:
    CtrSaveRead();
    virtual void start();
    virtual int vt_0xc();
};

class CtrSaveWrite : public Job{
    s32 flag3; // 0x10
    u8 pad2[4]; // 0x14
    s32 flag4; // 0x18
    s32 flag5; // 0x1c
    s32 flag6; // 0x20
public:
    CtrSaveWrite();
    virtual void start(); //lots of params man
    virtual int vt_0xc();
};