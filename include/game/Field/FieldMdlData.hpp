#pragma once

#include "FieldObj.hpp"
#include "game/types.hpp"

class FieldMdlCharBase : public FieldObjMdl{
public:
    virtual ~FieldMdlCharBase();

    FieldMdlCharBase(void);
};

class FieldMapMdl : public FieldObjBase{
public:
    virtual ~FieldMapMdl();

    FieldMapMdl(void);
};