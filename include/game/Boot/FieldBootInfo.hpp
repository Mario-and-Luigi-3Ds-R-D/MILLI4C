#pragma once

#include "game/types.hpp"

class FieldBootInfo{ //mentioned in FieldSystem, RealSystem, and DreamSystem
    u8 pad1[0x24]; // 0x00 - 0x24
    int FFlag1; // 0x24
public:
};

extern FieldBootInfo gFieldBootInfo;