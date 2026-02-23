#pragma once

#include "game/types.hpp"
#include "CtrThread.hpp"

class BtlMain{ //BtlMain vtable @ 0x006b8178
    u8 unk[288];
public:
    virtual ~BtlMain();

    BtlMain(void);
};

namespace BtlMain{
class VSyncThread : public CtrThread{ //BtlMain::VSyncThread vtable @ 0x006c25f0
    virtual ~VSyncThread();

    VSyncThread(void);
};
class BadgeDfxWrap{ //BtlMain::BadgeDfxWrap vtable @ 0x
    virtual ~BadgeDfxWrap();

    BadgeDfxWrap(void);
};
class BtlMapDfxWrap{ //BtlMain::BtlMapDfxWrap vtable @ 0x
    virtual ~BtlMapDfxWrap();

    BtlMapDfxWrap(void);
};
};//namesapce BtlMain

class BtlMainFunc : public BtlMain{
};

namespace BtlMainFunc{
class JobInitDfxMsg{

};
class AbortTaskEndCallBack{

};
}; //BtlMainFunc

class BtlMainProxy{
};
