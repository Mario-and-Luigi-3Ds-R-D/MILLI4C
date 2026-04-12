#pragma once

#include "types.hpp"
#include "System/Job.hpp"
#include "System/Memory/Mem.hpp"
#include "System/Ctr/File/CtrFS.hpp"

class CtrFReadBase : public Job{
protected:
    int flag3; // 0xC
    CtrFS* mFileSystem; // 0x10 
    Mem* flag4; // 0x14
    int flag5; // 0x18
    int flag6; // 0x1C
    int flag7; // 0x20
    ushort flag8; // 0x24
public:
    CtrFReadBase(); // 100%
    
    virtual void start();
    virtual void term(); // 100%
    virtual JobReturnCode getJobId(); // 100%
};

class CtrFReadEx : public CtrFReadBase{
protected:
    int flag9;
public:
    CtrFReadEx(); // 100% (kinda..?)

    virtual void start(); 
    virtual void term(); // 100%
    virtual JobReturnCode getJobId(); // 100%
};

class CtrFReadSimple : public CtrFReadBase{  // bro :skull:
};

class CtrFRead : public CtrFReadBase{
public:
    CtrFRead();
};