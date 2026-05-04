#pragma once

#include "types.hpp"
#include "System/Job.hpp"
#include "nn/fs/fs_FileStream.h"

class CtrSaveFile : public nn::fs::FileStream{
public:
    virtual ~CtrSaveFile();
    CtrSaveFile();
    void start(int,uint,int,uint); // param_2 sum important
    int mount(); // 100%
};

class CtrSaveFormat : public Job{
protected:
    int flag4; // 0x10
    int flag5; // 0x14
public:
    static void close();
    virtual void start();
    virtual JobReturnCode getJobId(); // 100%
};

class CtrSaveRead : public Job{
protected:
    int flag2; // 0x10
    int flag3; // 0x14
    int flag4; // 0x18
    int flag5; // 0x1c
    int flag6; // 0x20
public:
    CtrSaveRead(); // 100%
    virtual void start();
    virtual JobReturnCode getJobId(); // 100%
};

class CtrSaveWrite : public Job{
protected:
    int flag3; // 0x10
    int unk_0x14; // 0x14
    int flag4; // 0x18
    int flag5; // 0x1c
    int flag6; // 0x20
public:
    CtrSaveWrite(); // 100%
    virtual void start();
    virtual JobReturnCode getJobId(); // 100%
};