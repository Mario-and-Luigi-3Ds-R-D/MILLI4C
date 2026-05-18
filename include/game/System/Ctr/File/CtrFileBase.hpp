#pragma once

#include "types.hpp"
#include "System/Ctr/File/CtrFUncompSize.hpp"
#include "System/Ctr/File/CtrModuleFile.hpp"
#include "System/Ctr/File/CtrFS.hpp"
#include "nn/fs/fs_FileStream.h"
#include "nn/os/os_CriticalSection.h"

using namespace nn::os;

class CtrFRead;
class CtrFReadBase;

class CtrFileBase : public nn::fs::FileInputStream{
public:
    CtrFS* mpFileSystem;
    CtrFUncompSize mUncompFile; // 0x1c
public:
    CtrFileBase(void);
    virtual ~CtrFileBase();
    void close(void);
    void cancel(void); 
    void open(wchar_t const*);
    void read(CtrFRead*,const char*,void*,uint);
    void readModule(CtrFRead*,CtrModuleFile*,uint,int,uint);
    bool isBusy(void);
};