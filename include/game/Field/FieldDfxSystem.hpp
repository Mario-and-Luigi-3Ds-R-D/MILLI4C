#pragma once

#include "Dfx/DfxUnit.hpp"
#include "game/types.hpp"

class FieldDfxSystem : public DfxUnit{
public:
    virtual void SetupSystem(); // LAB_002d3e90
    virtual void SetUpMemory();
    virtual ~FieldDfxSystem();

    FieldDfxSystem(void);
    void deleteUnitAll(uchar);
    void entry(uchar, ushort); //return type is not void
    void init(); //unknown
    void Prepare();
};

class FieldDfxSystemSeCallback{ //needs research, doesnt need a base
};