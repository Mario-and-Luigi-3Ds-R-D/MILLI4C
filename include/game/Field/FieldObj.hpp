#pragma once

#include "game/types.hpp"
//#include <nn/math/Matrix34.h>

class FieldObjBase{ //FieldObjBase vtable @ 0x006b38ac
    u8 unk[0x9c];
public:
    virtual ~FieldObjBase();

    FieldObjBase(void);
};

class FieldObjCA : public FieldObjBase { //FieldObjCA vtable @ 0x006b0504
    int unk2;
    class FieldCA* mFieldCA = nullptr;
    int unk3;
//    nn::math::MTX34* mMtx = nullptr;
public:
    virtual ~FieldObjCA();

    FieldObjCA(void);
};

class FieldObjMdl{ //FieldObjMdl vtable @ 0x006b24b8
public:
    virtual ~FieldObjMdl();

    FieldObjMdl(void);
};
