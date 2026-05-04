#pragma once

#include "ScriptSystem.hpp"
#include "game/types.hpp"

class LocalEvent{ // has something at 0x24
};

class GlobalEvent : public ScriptSystem{
protected:
    int flag1; // 0x10
    int flag2; // 0x14
public:
    virtual ~GlobalEvent();

    GlobalEvent(void);
    float getRegister(ScriptUnit*, int);
    void getStatusReg(LocalEvent*, int);
    void setStatusReg(LocalEvent*, int, float);
    int execLocalEvent(LocalEvent*);
    void init(void const*, float*, uchar);
    void execEx(LocalEvent*, ScriptCode*);
};

extern "C"{
    float GetRegFlag(ushort,GlobalEvent *,LocalEvent *);
    void PutRegFlag(ushort,float,GlobalEvent *,LocalEvent *);
}