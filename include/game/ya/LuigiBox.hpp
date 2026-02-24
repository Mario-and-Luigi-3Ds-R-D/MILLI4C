#pragma once

#include "Battle/Obj/BtlObjBase.hpp"

class yaLuigiBoxLocal : public BtlObjMove{
    u8 unk_pad1[0x44];//start 3b4
    int unk1; //start @ 3f4
    int unk2; //end @ 3f8
    u8 unk_pad2[0x10]; // end @ 408
    int unk3; //start at 408
    u8 unk_pad3[0x30];
    int unk4; //start at 43c, not found in game
    int unk5; //start at 440
    int unk6; //start at 444
    u8 unk_pad3[0x84]; //end at 4cc then stop
public:
    virtual ~yaLuigiBoxLocal();

    yaLuigiBoxLocal();
};

static_assert(sizeof(yaLuigiBoxLocal) == 0x4d8, "");

class yaLuigiBoxLocalTOP{
    yaLuigiBoxLocal Base; //luigiboxloc is our base might delete lowk
public:
   virtual ~yaLuigiBoxLocalTOP();
   
   yaLuigiBoxLocalTOP();
};