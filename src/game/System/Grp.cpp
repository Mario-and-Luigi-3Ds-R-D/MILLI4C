#include <System/Grp.hpp>

Grp gGrp;

uint Grp::GetLcdHeight(uint lcdId) {
    switch (lcdId) {
    case 0x400:
    case 0x401:
    case 0x410:
        return 240;
    default:
        return 0;
    }
}

uint Grp::GetLcdWidth(uint lcdId) {
    switch (lcdId) {
    case 0x400:
    case 0x410:
        return 400;
    case 0x401:
        return 320;
    default:
        return 0;
    }
}

void Grp::mergeVram(size_t size) {
    uint index = VramAlcRange::getRangeIndexFor(size, 2);
    this->vramRanges[index].merge();
}

NONMATCHING
// TODO:
// Why the hell is it doing this? It only takes a uint, but it REFUSES to budge without two initial paramaters.
// It always takes in MOV R0, SP but never touches the stack.
/*void Grp::splitVram(u32 size) {
}*/