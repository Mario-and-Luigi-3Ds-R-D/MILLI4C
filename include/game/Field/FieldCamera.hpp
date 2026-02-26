#pragma once

#include "game/types.hpp"
//#include "nn/math/Vector3.h"

class FieldCamera{
public: 
    virtual ~FieldCamera();

    FieldCamera(void);
    void setPos(); //nn::math::VEC3 const*,nn::math::VEC3 const*
    void update(void);
};

class FieldCameraStereo{
};