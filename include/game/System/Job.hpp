#pragma once

#include "types.hpp"

class Job{
public:
    Job* flag0; //0x4
    Job* flag1; //Job::end, 0x8
    u8 unk_0xc[4]; //0xc

    int* end(int* unk_0x8);
};

class JobMan{ // could inherit from Job, you should get one
    Job* flag1; // 0x4
    Job* flag2; // 0x8
    Job* flag3; // 0xc 
public:
    virtual ~JobMan();

    JobMan();
    void jam(Job*);
    void enqueue(Job*);
    bool FUN_005eda38();
    bool isBusy(Job*);
};