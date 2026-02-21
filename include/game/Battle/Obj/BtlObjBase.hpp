#pragma once

#include <game/types.hpp>

class BtlObjBase{
    u8 pad_1[0x16];
    BtlObjBaseBase* mBase;
    u8 pad_2[100];
public:
    virtual ~BtlObjBase();

    BtlObjBase();
};

class BtlObjMove{
    u8 unk[0x3ac];
public:
    virtual ~BtlObjMove();

    BtlObjMove();
};

class BtlObjBaseBase{
    u8 pad[64];
public:
};