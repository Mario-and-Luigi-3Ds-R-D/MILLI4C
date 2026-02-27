//FieldMainU and FieldMainL and main base, A BIG ONE!
#pragma once

#include "FieldCamera.hpp"
#include "FieldCA.hpp"
#include "Memory/MemAlc.hpp"
#include "Gfx/Prim.hpp"
#include "game/types.hpp"

class FieldMainBase{ //at 0x2c4 it imports Prim, 0x364 it imports FieldCAList
    u8 unkpad[0x2c4];
    Prim mPrim;
public:
    virtual ~FieldMainBase();

    FieldMainBase(void);
    void termAll();
    void termGfx();
    void initFieldChr();
    void initFieldBlock();
    void initCam();
    void drawRender();
};

class FieldMainU : public FieldMainBase{
public:
    virtual ~FieldMainU();

    FieldMainU(void);
    void term();
    void initFieldChr();
};

class FieldMainL : public FieldMainBase{
public:
    virtual ~FieldMainL();

    FieldMainL(void);
    void term();
    void initFieldChr();
};