#pragma once

#include "types.hpp"
#include "System/Job.hpp"

class CtrFRead{
};
//WRONG WRONG! Come back to!!!
class CtrFReadBase : public Job{
    int flag2; // 0x10
    int flag3; // 0x14
    int flag4; // 0x18
    int flag5; // 0x1c
    uint flag6; // 0x20
    uint flag7; // 0x24
public:
    ~CtrFReadBase();
    CtrFReadBase();
    
    virtual void term();
    virtual int vt_0xc();
};

class CtrFReadEx : public CtrFReadBase{
    int flag5; //
public:
    CtrFReadEx();

    virtual void start();
    virtual void term();
    virtual int vt_0xc();
};

class CtrFReadSimple : public CtrFReadBase{
};