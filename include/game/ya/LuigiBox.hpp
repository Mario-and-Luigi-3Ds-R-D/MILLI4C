#pragma once

#include "Battle/Obj/BtlObjBase.hpp"

class yaLuigiBoxLocal : public BtlObjMove{
    u8 unk_pad1[68];//start 3b0
    int unk1; //0x3f4
    int unk2; //0x3f8
    u8 unk_pad2[12]; //0x3fc
    int unk3; //0x408
    u8 unk_pad3[48];
    int unk4; //0x43c
    int unk5; //0x440
    int unk6; //0x444
    u8 unk_pad3[132]; //end at 4cc then stop
public:
    virtual ~yaLuigiBoxLocal();

    yaLuigiBoxLocal();
};
static_assert(sizeof(yaLuigiBoxLocal) == 0x4d8, "In Ghidra this is 0x4d0, -4 for vtable.");

class yaLuigiBoxLocalTOP : public yaLuigiBoxLocal{
public:
   virtual ~yaLuigiBoxLocalTOP();
   
   yaLuigiBoxLocalTOP();
};