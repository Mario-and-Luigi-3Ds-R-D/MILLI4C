#pragma once

#include "game/types.hpp"
//#include "nn/math/Vector3.h"

class FieldCamera{
    float unk1; //0x4
    float unk2; //0x8
    float unk3; //0xc
    float unk4; //0x10
    float unk5; //0x14
    float unk6; //0x18
    float x; //0x1c, 3 of these are x,y,z
    float y; //0x20
    float z; //0x24
public: 
    virtual ~FieldCamera();

    FieldCamera(void);
    void setPos(); //nn::math::VEC3 const*,nn::math::VEC3 const*
    void update(void);
};