#pragma once

#include "game/types.hpp"
//#include "include/CTR-SDK/include/nn/util/util_Color.h"

class PrimVtxBuf{
    enum class eStyle
    {
        STYLE1,
        STYLE2,
        STYLE3,
    };
    enum class eDrawMode
    {
        MODE1,
        MODE2,
        MODE3,
    };
public:
    virtual ~PrimVtxBuf();

    PrimVtxBuf();
    void init(void* buf, u32 size, bool dynamic);
    void begin (eStyle style, eDrawMode mode, uint32_t count, bool indexed);
    void vtxClr(); //color8
    void vtxPos(float x, float y, float z);
    void vtxTex(float u, float v);
    void swapBuf();
};
