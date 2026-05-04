#pragma once

#include "types.hpp"

class CmdCacheMulti{
protected:
    void* unk_0x0;
    void* unk_0x4;
    void* unk_0x8;
    void* unk_0xC;
    void* unk_0x10;
    void* unk_0x14;
    void* unk_0x18;
    void* unk_0x1c;
    u8 unk_pad[96];
    void* mActiveCache;
    void* mCmdList;
    void* mBindList;
public:
    ~CmdCacheMulti();
    CmdCacheMulti();
    void init(int,int);
    void beginSave();
    void useSave(int,uint,bool);
    void endSave(int);
    void clear();
    void term();
};