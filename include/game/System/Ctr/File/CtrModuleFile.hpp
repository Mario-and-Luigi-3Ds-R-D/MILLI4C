#pragma once

#include "types.hpp"
#include "System/Ctr/CtrModule.hpp"
#include "nn/fs/fs_FileStream.h"
#include "nn/ro/ro_RegistrationList.h"

class CtrModuleFile : public nn::fs::FileInputStream, CtrModule{
public:
    virtual ~CtrModuleFile();
    void unload(int,int,uint*,int*);
    void read();
};

struct CtrModuleRO {
    void* _state; // 0x0
    nn::ro::RegistrationList* _disable; // 0x4
    MemAlcBase* _alcBase; // 0x8
};

extern CtrModuleRO gCtrModuleRO;