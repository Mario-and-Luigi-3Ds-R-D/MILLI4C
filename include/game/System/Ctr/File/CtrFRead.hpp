#pragma once

#include "game/types.hpp"

class CtrFRead{
};
//WRONG WRONG! Come back to!!!
class CtrFReadBase{
    int flag1; // 0x4
    int flag2; // 0x8
    u8 pad[0x8]; // 0xc
    int flag3; // 0x14
    int flag4; // 0x18
    u8 pad2[0x4]; // 0x1c
    uint flag5; // 0x20
    ushort flag6; // 0x24
public:
    virtual ~CtrFReadBase();

    CtrFReadBase(void);
};

class CtrFReadEx : public CtrFReadBase{
    int flag5; //
};

class CtrFReadSimple : public CtrFReadBase{
};