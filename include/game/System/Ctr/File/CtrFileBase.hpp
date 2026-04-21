#pragma once

#include "types.hpp"
#include "System/Ctr/File/CtrFUncompSize.hpp"
#include "System/Ctr/File/CtrFS.hpp"
#include "System/Ctr/CtrModule.hpp"
#include "nn/fs/fs_FileStream.h"
#include "nn/os/os_CriticalSection.h"

class CtrFileBase : public nn::fs::FileInputStream{
protected:
    int flag3; // 0xc
    int flag4; // 0x10
    int flag5; // 0x14
    s32 CriticalSection; // 0x18
    CtrFUncompSize mUncompFile; // 0x1c
    CtrModule* mModule; // 0x3c
public:
    CtrFileBase(void);
    virtual ~CtrFileBase();
    void close(void); // 100%
    void cancel(void); 
    void open(wchar_t const*); // 48%
    void mount(int,int,int);
    void finishMount(int,int);
    void read(CtrFSEx*,const char*,void*,uint);
    void readModule(CtrFSEx*,CtrModuleFile*,uint,int,uint);
    void isBusy(void);
};