#pragma once

#include "types.hpp"
#include "System/Job.hpp"
#include "System/Ctr/File/CtrFS.hpp"

class CtrFReadBase : public Job{
public:
    CtrFS* mFileSystem; // 0x10
    int flag3; // 0x14
    int flag4; // 0x18
    int flag5; // 0x1c
    int flag6; // 0x20
    ushort flag7; // 0x24

    __attribute__((noinline)) CtrFReadBase(); // 100%
    
    virtual void start();
    __attribute__((noinline)) virtual void term(); // 100%
    virtual int vt_0xc(); // 100%
};

class CtrFReadEx : public CtrFReadBase{
    int flag5;
public:
    CtrFReadEx(); // 100% (kinda..?)

    virtual void start(); 
    virtual void term(); // 100%
    virtual int vt_0xc(); // 100%
};

class CtrFReadSimple : public CtrFReadBase{  // bro :skull:
};

class CtrFRead : public CtrFReadBase{
public:
    CtrFRead();
};