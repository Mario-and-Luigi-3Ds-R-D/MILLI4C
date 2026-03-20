#pragma once

#include "types.hpp"
#include "System/Ctr/CtrThread.hpp"
//nn crit sec + light ev
#include "System/Job.hpp"

class CtrJobMan{
    int flag1; // 0x4
    int flag2; // 0x8
    CtrThread mThread; //0xc
    int flag3; //0x1c
    int mLightEvent; //0x20
    int flag4; // 0x24
    int mCriticalSection; // 0x28
    int flag6; // 0x2c
    int flag7; // 0x30
    Job mJob; // 0x34
    int flag8; // 0x38
public:
    CtrJobMan(void);

    virtual void enqueue(Job *);
    virtual void jam(Job *);
    virtual bool release(Job *);
    virtual void releaseDone(Job *);
    virtual void term(void);
    virtual bool isBusy(Job *);
    virtual int vt_0x14();
    //virtual ~CtrJobMan();
    virtual int startLightEvent();

    int startCtrThread();
    void start(int, int, int);
    void init(void*,int,int);
};