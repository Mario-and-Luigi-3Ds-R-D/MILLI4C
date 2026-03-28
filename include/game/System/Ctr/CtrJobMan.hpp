#pragma once

#include "types.hpp"
#include "System/Ctr/CtrThread.hpp"
//nn crit sec + light ev
#include "System/Job.hpp"
#include "nn/os/os_CriticalSection.h"
#include "nn/os/os_LightEvent.h"

class CtrJobMan : public JobMan{
    CtrThread mThread; //0xc
    int flag3; //0x1c
    nn::os::LightEvent mLightEvent; //0x20
    nn::os::CriticalSection mCriticalSection; // 0x28
    Job mJob; // 0x34
    int flag8; // 0x38
public:
    CtrJobMan(void);

    virtual void enqueue(Job *); // 100%
    virtual void jam(Job *); // 100%
    virtual bool release(Job *); // 100%
    virtual Job* releaseDone(Job *); // 75%
    virtual void term(void);
    virtual bool isBusy(Job *); // 100%
    virtual int vt_0x14(); // 100% (esstenially its LIGHT)
    //virtual ~CtrJobMan();
    virtual int startLightEvent(); // 100%
    virtual int startCtrThread(); // 100%

    void start(int, int, int);
    void init(void*,int,int);
};