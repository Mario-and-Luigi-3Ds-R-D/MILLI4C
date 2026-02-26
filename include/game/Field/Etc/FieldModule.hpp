#pragma once

#include "game/types.hpp"
#include "Ctr/CtrModule.hpp"

class FieldModule{
    s32 flag1; // 0x4
    u8 pad[0x34]; // 0x8
    CtrModule mModule; // 0x38
};
static_assert(sizeof(FieldModule) == 0x38) //Class size is larger, add CtrModule shit later + public later