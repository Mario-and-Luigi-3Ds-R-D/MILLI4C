#pragma once

#include "game/types.hpp"

class CmdCacheMulti{
    u8 _pad_[128]; //garbage
    u8 _pad2_[8]; //used alot 0x80-0x88
public:
    CmdCacheMulti(void);
    void init(int,int);
    void beginSave(void);
    void useSave(int,uint,bool);
    void endSave(int);
    void clear(void);
    void term(void);
};