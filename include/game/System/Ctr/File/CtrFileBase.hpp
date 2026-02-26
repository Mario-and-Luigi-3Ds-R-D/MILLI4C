#pragma once

#include "game/types.hpp"
#include "Ctr/File/CtrFUncompSize.hpp"

class CtrFileBase : public CtrFUncompSize{
    u8 unk_flags[0x8]; //pad until CtrFUncompSize takes over, 0x4
    u8 unk_pad[0x14]; // 0xc
    CtrFUncompSize mUncompFile; // 0x

public:
    CtrFileBase(void);
    void open(wchar_t const*);
    void close(void);
    void cancel(void);
    void isBusy(void);
};