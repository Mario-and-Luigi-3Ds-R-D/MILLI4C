#pragma once

#include "types.hpp"
#include "nn/os/os_LightEvent.h"


enum JobReturnCode{
    JOB = 0x0,
    UNLOAD_MODULE = 0x80000000,
    FUNCOMP_SIZE = 0x81000000,
    FREAD_BASE = 0x81000001,
    FREAD_EX = 0x81000003,
    SAVE_READ = 0x82000001,
    SAVE_WRITE = 0x82000002,
};

class Job{
public:
    Job* flag0; // 0x4
    Job* flag1; // 0x8

    virtual void start();
    virtual void term();
    virtual JobReturnCode getJobId();
    virtual bool end(int, int);
};

class JobMan{ // could inherit from Job, you should get one
public:
    Job* mIsDone; // 0x4
    Job* flag2; // 0x8

    virtual void enqueue(Job*);
    virtual void jam(Job*);
    virtual bool release(Job*);
    virtual Job* release();
    virtual void term(Job*);
    virtual bool isBusy(Job*);
    virtual int end();
    virtual ~JobMan();
    void cancel(Job* param_2, Job* param_3);
};