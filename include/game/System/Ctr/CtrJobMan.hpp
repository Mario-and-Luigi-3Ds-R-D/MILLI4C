#pragma once

#include "types.hpp"
#include "System/Ctr/CtrThread.hpp"
#include "System/Job.hpp"
#include "nn/os/os_CriticalSection.h"
#include "nn/os/os_LightEvent.h"

class CtrJobMan : public JobMan{
public:
    CtrThread mCtrThread; //0xC
    nn::os::LightEvent mLightEvent; //0x20
    nn::os::CriticalSection mCriticalSection; // 0x28
    Job mJob; // 0x34
public:
    CtrJobMan(void);

    virtual void enqueue(Job *); // 100%
    virtual void jam(Job *); // 100%
    virtual bool release(Job *); // 100%
    virtual void release(); // 100%
    virtual void term(); // 100%
    virtual bool isBusy(Job *); // 100%
    virtual bool isDone(); // 100%
    virtual ~CtrJobMan();
    virtual s32 signalValue(); // 100%
    virtual int startCtrThread(); // 100%

    void start(int, int, int);
    void init(void*,int,int);
};