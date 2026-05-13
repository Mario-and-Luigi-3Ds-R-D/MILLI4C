#pragma once

#include "types.hpp"

class ScriptCode;
class ScriptUnit;

class ScriptSystem{
protected:
    uchar* mCommandMetaData; // 0x4
public:
    virtual ~ScriptSystem();
    virtual void init(void const*);
    virtual float getRegister(ScriptUnit*, int) = 0;

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
    uint mVarFlags;
};