#pragma once

#include "Battle/Obj/BtlObjBase.hpp"

class yaLuigiBoxLocal : public BtlObjMove{
    u8 unk_pad1[68];//start 3b0
    int flag1; //0x3f4
    int flag2; //0x3f8
    u8 unk_pad2[12]; //0x3fc
    int flag3; //0x408
    u8 unk_pad3[48];
    int flag4; //0x43c
    int flag5; //0x440
    int flag6; //0x444
    u8 unk_pad3[132]; //end at 4cc then stop
public:
    virtual ~yaLuigiBoxLocal();

    yaLuigiBoxLocal();
};
static_assert(sizeof(yaLuigiBoxLocal) == 0x56c, "Halt! Size is wrong, check with Ghidra!");

class yaLuigiBoxLocalTOP : public yaLuigiBoxLocal{
public:
   virtual ~yaLuigiBoxLocalTOP();
   
   yaLuigiBoxLocalTOP();
};