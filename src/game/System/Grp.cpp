#include <System/Grp.hpp>

Grp gGrp;



u32 Grp::GetLcdHeight(u32 screenHeight){
    u32 height;
    u8 newHeight = screenHeight == 0x400;
    if(!newHeight){
        screenHeight += -0x401;
        newHeight = screenHeight == 0;
    }
    if((newHeight) || (screenHeight == 0xf)){
        height = 0xf0;
    } else{
        height = 0;
    }
    return height;
}

u32 Grp::GetLcdWidth(uint screenWidth) {
    u32 newWidth;

    if (screenWidth != 0x400) {
        newWidth = (screenWidth - 0x400) - 1;
        switch (newWidth) {
        case 0:
            return 0x140;
        case 15:
            return 0x190;
        default:
            return 0;
        }
    } else {
        return 0x190;
    }
}

void Grp::mergeVram(u32 size){
    ((VramAlcRange*)((u32)this + (VramAlcRange::allocSize(size, 2) * 0x8C) + 0x14))->merge();
}

NONMATCHING
// TODO:
// Why the hell is it doing this? It only takes a uint, but it REFUSES to budge without two initial paramaters.
// It always takes in MOV R0, SP but never touches the stack.
/*void Grp::splitVram(u32 size) {
    u32 arg = size;
    this->vramRanges.split(arg + (VramAlcRange::allocSize(arg, 2) * 0x8C) + 0x14);
}*/