#pragma once

#include "game/types.hpp"
#include "Ctr/File/CtrFUncompSize.hpp"
#include "Ctr/CtrModule.hpp"

class CtrFileBase{
    int flag1; // 0x4
    int flag2; // 0x8
    int flag3; // 0xc
    int flag4; // 0x10
    int flag5; // 0x14
    s32 CriticalSection; // 0x18
    CtrFUncompSize mUncompFile; // 0x1c
    CtrModule* mModule; // 0x3c

public:
    CtrFileBase(void);
    void open(wchar_t const*);
    void close(void);
    void cancel(void);
    void isBusy(void);
};