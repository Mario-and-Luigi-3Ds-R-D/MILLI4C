#pragma once

#include "types.hpp"
#include "System/Job.hpp"
#include "System/Ctr/File/CtrFRead.hpp"
#include "System/Ctr/File/CtrFS.hpp"
#include "nn/ro/ro_RegistrationList.h"
#include "nn/fs/fs_FileStream.h"

class CtrModule{
protected:
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
    void finalize();
    void mount();
    void read();
};

class CtrLoadModule : public CtrFReadBase{
protected:
    short flag8; // 0x26
    CtrFS* mFileSystem; // 0x28
    int flag9; // 0x2c
    int flag10; // 0x30
    int flag11; // 0x34
    int flag12; // 0x38
public:
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

struct CtrModuleRO {
    void* _state;                        // 0x0
    nn::ro::RegistrationList* _disable;  // 0x4
    MemAlcBase* _alcBase;               // 0x8 or 0xc?
};

extern CtrModuleRO gCtrModuleRO;