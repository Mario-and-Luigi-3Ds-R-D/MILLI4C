#pragma once

#include "GfxObject.hpp"
#include "game/types.hpp"

namespace adsl::gfx{
    class AnimBinding : public GfxObject{
        u8 pad[4];
        int flag1;
        int flag2;
        u8 pad2[8];
        int* flag3;
        int flag4;
        u8 pad3[4];
        uint flag5;
}; //AnimBinding
    class Blend{

};
} // adsl::gfx