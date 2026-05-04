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