#pragma once

#include "types.hpp"
#include "System/Job.hpp"
#include "System/Memory/Mem.hpp"
#include "System/Ctr/File/CtrFS.hpp"

class CtrFReadBase : public Job{
public:
    int flag3; // 0xC
    CtrFSEx* mpFileSystem; // 0x10
    Mem* mpActiveMem; // 0x14
    uint* mpFileOffset;
    uint _1C;
    uint _20;
    ushort mReadStatus; // 0x24
public:
    CtrFReadBase(); // 100%
    
    virtual void start();
    virtual void term(); // 100%
    virtual JobReturnCode getJobId(); // 100%

    int initRead(int);
};

class CtrFReadSimple : public CtrFReadBase{  // bro :skull:
public:
    virtual JobReturnCode getJobId(); // 100%
};

class CtrFRead : public CtrFReadSimple{
protected:
    short _26;
    int mOffset;
    bool mCanDoRead; //0x2C
public:
    CtrFRead() { } // 100%

    virtual void start(); 
};

class CtrFReadEx : public CtrFRead{
protected:
public:
    CtrFReadEx(); // 100%

    virtual void term(); // TODO: Remake CtrFS because, i'm a lazy :D and I fucking hate finding a replacement for CtrFSEx since its PERFECT
};