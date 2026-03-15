#pragma once

#include "game/types.hpp"
#include "nn/math/math_Vec3.h"

class MoveVBase{
    f32 flag1; // 0x4
    f32 flag2; // 0x8
    f32 flag3; // 0xc
    f32 flag4; // 0x10
    f32 flag5; // 0x14
    f32 flag6; // 0x18
    f32 flag7; // 0x1c
    f32 flag8; // 0x20
    f32 flag9; // 0x24
    f32 flag10; // 0x28
public:
    virtual ~MoveVBase();

    MoveVBase(nn::math::VEC3);
    MoveVBase(void);

    void moveCosAbs(nn::math::VEC3 const&, float); // 0x005a1e58
    void moveCosAbs(int, nn::math::VEC3 const&, float); // 0x005a1ee8
    void moveCosSin(int); //Vec3 const&, float
    void moveFrmAbs(); //Vec3 const&, float, 0x005a1fc8
    void moveFrmAbs(int); //Vec3 const&, float, 0x005a2074
    void moveSinAbs(); //Vec3 const&, float, 0x005a21cc
    void moveSinAbs(int); //Vec3 const&, float, 0x005a2298
    void moveSin2Abs(int); //nn::math::VEC3 const&,float,float,float
    void moveCosSinAbs(); //Vec3 const&, float, 0x005a2384
    void moveCosSinAbs(int); //Vec3 const&, float, 0x005a2414
    MoveVBase* func(float);
    void move(int); //Vec const&, float, 0x005a25d0
    void stop(int); // 0x005a2640
    void stop(void *); // 0x005a26d0
    void wait(int, float); 
    void jumpFA(int,float,float,float); // Vec3 const&
    void jumpFS(int,float,float,float); // Vec3 const&
    void jumpFT(int,float,float,float); // Vec3 const&
};