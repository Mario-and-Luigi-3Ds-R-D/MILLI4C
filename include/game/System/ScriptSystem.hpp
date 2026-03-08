#pragma once

#include "types.hpp"

class ScriptCode;
class ScriptUnit;

class ScriptSystem{
    int* mStart; // 0x4
public:
    virtual ~ScriptSystem();
    virtual void init(void const*);

    ScriptSystem(void);
    void rewind(ScriptUnit *,ScriptCode const*);
};

class ScriptUnit{
};

class ScriptCode{
int mUnk1;
};