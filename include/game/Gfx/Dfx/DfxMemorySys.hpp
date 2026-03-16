#pragma once

#include "game/types.hpp"

#include "CtrFS.hpp"
#include "DfxResAlc.hpp"
#include "DfxLinkList.hpp"
#include "DfxVRAMTransfer.hpp"
#include "MemAlcBase.hpp"

class DfxMemorySys{
public:
    virtual ~DfxMemorySys();

    DfxMemorySys(void);
    void memReadCancelAll(void);
    void init(MemAlcBase *, DfxResAlc *, DfxLinkList<DfxLineBB> *, DfxVRAMTRansfer, CtrFS);
    void term(void);
    void doWork(void);
}