#pragma once

#include "types.hpp"

class MoveC{
public:
};

class MoveWorkF{
    //vtable
    f32 flag1; // 0x4
    char flag2; // 0x8
    f32 flag3; // 0xc
    f32 flag4; // 0x10
    f32 flag5; // 0x14
    f32 flag6; // 0x18
public:
    virtual ~MoveWorkF();

    MoveWorkF(void);
    void calc(float);
};

class MoveWorkV : public MoveWorkF{
    f32 flag7; // 0x20
    f32 flag8; // 0x24
    f32 flag9; // 0x28
public:
    virtual ~MoveWorkV();

    MoveWorkV(void);
};

template <class u1> // 1u
class MoveV{
    u8 pad[36]; // 0x4
    f32 flag1; // 0x28
    f32 flag2; // 0x2c
    MoveWorkV mWorkV; // 0x30
public:
    virtual ~MoveV<u1>();
};

template <class u1>
class MoveF{
    u8 pad[20]; //0x4
    MoveWorkF mWorkF; // 0x1c
public:
    virtual ~MoveF<u1>();
};
