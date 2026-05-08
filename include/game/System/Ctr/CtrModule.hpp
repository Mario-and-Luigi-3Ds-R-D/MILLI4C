#pragma once

#include "types.hpp"
#include "System/Job.hpp"
#include "nn/ro/ro_RegistrationList.h"
#include "nn/fs/fs_FileStream.h"

class CtrModule{
protected:
    void* mModuleOffset; // 0x4
    u8 pad[0x14]; // 0x8
    int flag1; // 0x1c
    int flag2; // 0x20
public:
    virtual ~CtrModule();
    CtrModule(void);

    struct ModulePtrs{
        void* _state; // 0x0
        nn::ro::RegistrationList* _disable; // 0x4
        MemAlcBase* _alcBase; // 0x8
    };

    static ModulePtrs _module;
};