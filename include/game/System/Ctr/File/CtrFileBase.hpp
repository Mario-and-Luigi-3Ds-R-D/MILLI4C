#pragma once

#include "types.hpp"
#include "System/Ctr/File/CtrFUncompSize.hpp"
#include "System/Ctr/File/CtrModuleFile.hpp"
#include "System/Ctr/CtrModule.hpp"
#include "nn/fs/fs_FileStream.h"
#include "nn/os/os_CriticalSection.h"

using namespace nn::os;

class CtrFileBase : public nn::fs::FileInputStream{
protected:
    CtrJobMan* mpJobMan;
    CtrFUncompSize mUncompFile; // 0x1c
    CtrModule* mpModule; // 0x3c
public:
    CtrFileBase(void); // 100%
    virtual ~CtrFileBase();
    void close(void); // 100%
    void cancel(void); 
    void open(wchar_t const*);
    void read(CtrFRead*,const char*,void*,uint);
    void readModule(CtrFRead*,CtrModuleFile*,uint,int,uint);
    bool isBusy(void);
};