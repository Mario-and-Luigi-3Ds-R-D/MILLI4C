//class DreamPC does not exist so put MarioU, sub, and luigi in here
#pragma once

#include "FieldPC.hpp"
#include "FieldChr.hpp"

//class DreamPC : public FieldPC{
//};

class DreamMario : public FieldMario{ //DreamMario vtable @ 0x006ae0a4
public:
    virtual ~DreamMario();

    DreamMario(void);
};

class DreamMarioSub : public FieldChr{ //DreamMarioSub vtable @ 0x006b41fc
public:
    virtual ~DreamMarioSub();

    DreamMarioSub(void);
};

class DreamLuigi : public FieldLuigi{ //DreamLuigi vtable @ 0x006ad654
public:
    virtual ~DreamLuigi();

    DreamLuigi(void);
};