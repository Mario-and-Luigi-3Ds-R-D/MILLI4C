#pragma once

#include "game/types.hpp"

class DfxBuffer{
public:
    virtual ~DfxBuffer();

    DfxBuffer(void);
    void setBufNum(uint bufNum);
};