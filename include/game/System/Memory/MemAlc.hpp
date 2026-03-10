//has _vptr and also maybe contains/might be used for MemAlcB, and F
#pragma once

#include "types.hpp"

class MemAlc{
    u64 flag1; // 0x0
    u32 mCore; // 0x8
    s16 mCurrentCore; // 0xc, guess
    uint mCoreNumber; // 0x10
    u32 mCriticalSect; // 0x14, nn::os::critsection
    u32 flag5; // 0x18
public:
    virtual ~MemAlc();

    MemAlc(void);
    void free();
    int allocCore(uint, uint);
    void initCore(void*, uint);
};

class MemAlcB{
    s32 flag1; // 0x0
    s32 flag2; // 0x4
    u8 vtable[4]; // 0x8
    int mCore; // 0xc
    void* mCurrentCore; // 0x10
public:
    MemAlcB(void);
};

class MemAlcF{
public:
    MemAlcF(void);
};

class MemAlcH{
public:
    MemAlcH(void);
};