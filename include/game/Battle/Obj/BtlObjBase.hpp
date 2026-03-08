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

static_assert(sizeof(BtlObjBase) == 0x114, "Oh noes! BAD!");

class BtlObjMove{
    u8 unk[0x3ac];
public:
    virtual ~BtlObjMove();

    BtlObjMove();
};
static_assert(sizeof(BtlObjMove) == 0x3b4, "Oh noes! BAD!");

class BtlObjBaseBase{
    u8 pad[64];
public:
    virtual ~BtlObjBaseBase();
};
static_assert(sizeof(BtlObjBaseBase) == 0x104, "Oh noes! BAD!");