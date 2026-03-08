#pragma once

#include "game/types.hpp"
#include "Ctr/CtrThread.hpp"
//nn crit sec + light ev
#include "System/Job.hpp"

class CtrJobMan{
    s32 flag1; // 0x4
    s32 flag2; // 0x8
    CtrThread mThread; //0xc
    s32 flag3; //0x18
    u8 mLightEvent[0x8]; //0x1c
    s32 flag4; // 0x24;
    u8 mCriticalSection[0x4]; // 0x28
    s32 flag5; // 0x2c
    s32 flag6; // 0x30
    Job mJob; // 0x34
public:
    virtual ~CtrJobMan();

    CtrJobMan(void);
    void init(void *,int,int);
    void term(void);
    void jam(Job *);
    void isBusy(Job *);
    void enqueue(Job *);
    void release(Job *);
    void release(Job *);
};