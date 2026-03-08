#pragma once

#include "game/types.hpp"

class ScriptCode;
class ScriptUnit;

class ScriptSystem{
       int* mStart; // 0x4
public:
    virtual ~ScriptSystem();

    ScriptSystem(void);
    void* init(void const*);
    void rewind(ScriptUnit *,ScriptCode const*);
};

class ScriptUnit{
};

class ScriptCode{
int mUnk1;
};