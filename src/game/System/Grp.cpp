#include <System/Grp.hpp>

/* Display Manager */

Grp gGrp;

/* GetLcdHeight(uint id) */

/* Enter an ID, get a value! */

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


/* GetLcdWidth(uint id) */

/* Enter an ID, get a value! */

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

/* Grp::mergeVram(size_t size) */

/* Merges the display managers Vram into VramAlcRange::mergeVram() */

void Grp::mergeVram(size_t size) {
    uint index = VramAlcRange::getRangeIndexFor(size, 2);
    this->vramRanges[index].merge();
}