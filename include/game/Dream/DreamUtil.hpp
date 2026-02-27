#pragma once

#include "game/types.hpp"

class DreamUtil{
public:
    DreamUtil();
    void ChkQuadSeg(); //(nn::math::VEC3 const&,nn::math::VEC3 const&,nn::math::VEC3 const&,nn::math::VEC3 const&,nn::math::VEC3 const&,nn::math::VEC3 const&,float *), unk return
    void ChkTriSeg(); //(nn::math::VEC3 const&,nn::math::VEC3 const&,nn::math::VEC3 const&,nn::math::VEC3 const&,nn::math::VEC3 const&,float *), unk return
};