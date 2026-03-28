#pragma once

#include "types.hpp"
#include "System/Ctr/File/CtrFUncompSize.hpp"
#include "System/Ctr/File/CtrFS.hpp"
#include "System/Ctr/CtrModule.hpp"
#include "nn/fs/fs_FileStream.h"
#include "nn/os/os_CriticalSection.h"

class CtrFileBase : public nn::fs::FileInputStream{
    int flag3; // 0xc
    int flag4; // 0x10
    int flag5; // 0x14
    s32 CriticalSection; // 0x18
    CtrFUncompSize mUncompFile; // 0x1c
    CtrModule* mModule; // 0x3c

public:
    CtrFileBase(void);
    ~CtrFileBase();
    void open(wchar_t const*);
    void close(void); // 100%
    void cancel(void); 
    void getSave(int,int,int*);
    void read(CtrFSEx*,const char*,void*,uint);
    void readModule(CtrModuleFile*,CtrFSEx*,uint,int,uint);
    void start();
    void isBusy(void);
};