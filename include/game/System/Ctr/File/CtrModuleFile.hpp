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