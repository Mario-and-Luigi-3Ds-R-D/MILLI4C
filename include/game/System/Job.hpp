#pragma once

#include "types.hpp"
#include "nn/os/os_LightEvent.h"


enum JobReturnCode{
    JOB = 0x0,
    UNLOAD_MODULE = 0x80000000,
    FUNCOMP_SIZE = 0x81000000,
    FREAD_BASE = 0x81000001,
    FREAD_SIMPLE = 0x81000003,
    SAVE_READ = 0x82000001,
    SAVE_WRITE = 0x82000002,
};

class Job{
public:
    Job* mCurrentJob; // 0x4
    Job* mTerminateStatus; // 0x8

    virtual void start();
    virtual void term();
    virtual JobReturnCode getJobId();
    virtual bool get(int, uint);
};

class JobMan{ // could inherit from Job, you should get one
public:
    Job* mIsDone; // 0x4
    Job* mJammedJob; // 0x8

    JobMan() : mIsDone(0), mJammedJob(0){ }
    virtual void enqueue(Job*);
    virtual void jam(Job*);
    virtual bool release(Job*);
    virtual void release();
    virtual void term();
    virtual bool isBusy(Job*);
    virtual bool isDone();
    virtual ~JobMan() {this->JobMan::term();}
    
    void cancel(Job*,Job*);
};