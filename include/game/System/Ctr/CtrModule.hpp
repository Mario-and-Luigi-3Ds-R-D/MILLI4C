#pragma once

#include "types.hpp"

class CtrModule{
    int mIsLoaded; // 0x4, in __deallocating
    u8 pad[0x14]; // 0x8
    int flag1; // 0x1c, in __deallocating
    int flag2; // 0x20, in __deallocating
public:
    virtual ~CtrModule();

    CtrModule(void);
};

class CtrModuleFile{ // beeg
public:
    virtual ~CtrModuleFile();
    void unload(int,int,uint*,int*);
    void tryLoad();
};

class CtrLoadModule{
    s32 flag1; // 0x4
    s32 flag2; // 0x8
    u8 pad[0x1c]; // 0xc
    s32 flag3; // 0x24
    u8 pad2[0x4]; // 0x28
    s32 flag4; // 0x2c
    u8 pad3[0x8];
    s32 flag5; // 0x38
public:
    CtrLoadModule(void);
};
//static_assert(sizeof(CtrLoadModule) == 0x3c); //class is 0x3c