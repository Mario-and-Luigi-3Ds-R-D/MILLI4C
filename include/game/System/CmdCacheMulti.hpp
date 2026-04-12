#pragma once

#include "types.hpp"

class CmdCacheMulti{
protected:
    void* mMemoryAddress;
    void* mAppMemorySize;
    void* mStartAddr;
    void* mEndAddr;
    void* mRamEndAddr;
    void* mMemoryRamEndAddr;
    void* unk_0x18;
    void* unk_0x1c;
    u8 unk_pad[96];
    void* mActiveCadhe;
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
    void startup();
};