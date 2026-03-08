#pragma once

#include "types.hpp"


class Job{
public:
    Job* flag0; //0x4
    Job* flag1; //Job::end, 0x8
    u8 unk_0xc[4]; //0xc

    virtual ~Job();

    virtual void FUN_00485d2c();
    virtual void FUN_00485d30();
    virtual bool FUN_005e361c();
    virtual void end(int*);
};

class JobMan{ // could inherit from Job, you should get one
    Job* mIsDone; // 0x4
    Job* flag2; // 0x8
    Job* flag3; // 0xc 
public:
    JobMan();
    virtual void enqueue(Job*);
    virtual void jam(Job*);
    virtual bool release(Job*);
    virtual Job* releaseDone(Job*, Job*);
    virtual void term(Job*);
    virtual bool isBusy(Job*);
    virtual bool FUN_005eda38();
    virtual ~JobMan();
};