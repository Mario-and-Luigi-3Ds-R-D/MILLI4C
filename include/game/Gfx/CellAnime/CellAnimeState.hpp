#pragma once

#include "game/types.hpp"

//#include "include/CTR-SDK/include/nn/math/math_Matrix44.h"
//#include "include/CTR-SDK/include/nn/ulcd/CTR/ulcd_StereoCamera.h"

class CellAnimeState{
public:
    virtual ~CellAnimeState();

    CellAnimeState(void);
    void setProj2dParallax(nn::ulcd::StereoCamera const*,nn::math::Matrix44 const&);
    void prepare(void);
    void resetState(void);
};
