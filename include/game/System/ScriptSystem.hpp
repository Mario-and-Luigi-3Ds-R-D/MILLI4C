#pragma once

#include "types.hpp"

class ScriptCode;
class ScriptUnit;

class ScriptSystem{
protected:
    int mCommandMetaData; // 0x4
public:
    virtual ~ScriptSystem();
    virtual void init(void const*);

    ScriptSystem(void);
    int rewind(ScriptUnit *,ScriptCode const*);
    static float loadArrayElement(ushort*, short);
};

class ScriptUnit{
public:
    int mUnitValue;
};

class ScriptCode{
public: 
    ushort mCodeNum;
    uint mCodeUnit;
};