#pragma once

#include "types.hpp"
#include "System/Ctr/CtrThread.hpp"
//nn crit sec + light ev
#include "System/Job.hpp"

class CtrJobMan{
    s32 flag1; // 0x4
    s32 flag2; // 0x8
    CtrThread mThread; //0xc
    s32 flag3; //0x18
    int mLightEvent; //0x1c
    s32 flag4; // 0x20;
    int mCriticalSection; // 0x24
    s32 flag5; // 0x28
    s32 flag6; // 0x2c
    Job mJob; // 0x30
public:
    CtrJobMan(void);
    virtual void enqueue(Job *);
    virtual void jam(Job *);
    virtual void release(Job *);
    virtual void releaseDone(Job *);
    virtual void term(void);
    virtual void isBusy(Job *);
    virtual int startLightEvent();
    virtual ~CtrJobMan();

    int startCtrThread();
    void start(int, int, int);
    void init(void *,int,int);
};