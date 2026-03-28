#pragma once

#include "types.hpp"
#include "System/Job.hpp"
#include "System/Ctr/File/CtrFRead.hpp"
#include "System/Ctr/File/CtrFS.hpp"
#include "nn/fs/fs_FileStream.h"

class CtrModule{
    int mModuleNum; // 0x4
    u8 pad[0x14]; // 0x8
    int flag1; // 0x1c
    int flag2; // 0x20
public:
    virtual ~CtrModule();

    CtrModule(void);
};

// Revisit

class CtrModuleFile : public nn::fs::FileInputStream, CtrModule{
public:
    virtual ~CtrModuleFile();
    void unload(int,int,uint*,int*);
    void read();
};

class CtrLoadModule : public CtrFReadBase{
public:
    short flag1; // 0x26
    CtrFS* mFileSystem; // 0x28
    int flag4; // 0x2c
    int flag5; // 0x30
    int flag6; // 0x38

    CtrLoadModule(void);
    virtual void start();
};

class CtrUnloadModule : public Job{
public:
    CtrUnloadModule();

    virtual void start(); // temp
    virtual int vt_0xc(); // 100%
};

class CtrLoadModuleEx : public CtrLoadModule{
public:
    virtual void term();
};