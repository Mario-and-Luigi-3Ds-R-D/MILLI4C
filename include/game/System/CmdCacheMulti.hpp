#pragma once

#include "game/types.hpp"

class CmdCacheMulti{
    u8 pad1[128]; //garbage
    u8 pad2[8]; //used alot 0x80-0x88
public:
    ~CmdCacheMulti();
    CmdCacheMulti(void);
    void init(int,int);
    void beginSave(void);
    void useSave(int,uint,bool);
    void endSave(int);
    void clear(void);
    void term(void);
};
static_assert(sizeof(CmdCacheMulti) == 0x94, "Oh noes! BAD!");