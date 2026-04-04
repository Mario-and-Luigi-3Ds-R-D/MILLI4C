#pragma once

#include "types.hpp"

#include "Boot/FieldBootInfo.hpp"
#include "System/Ctr/CtrNwAlc.hpp"
#include "System/TaskMainBase.hpp"

class FieldSystem : public TaskMainbase{
    s32 flag1;
    s32 flag2;
    CtrNwAlc* mNwAlc;
    u8 unk[316]; //add more info
public:
    virtual ~FieldSystem();
    virtual void vtable(); //could be wrong 100%

    FieldSystem(FieldBootInfo const*); //vtable @ 0x006B262C 
};
static_assert(sizeof(FieldSystem) == 0x154, "In Ghidra this is 0x154 could be wrong, -4 for vtable.");

class FieldMessageSystem{ //no vtable
};

class FieldSoundSystem{ //no vtable
public:
    FieldSoundSystem(void);
    void start();
    void playBgm(int, uint);
    void setVolume(int, int, int);
    void load(uint);
    void stopBgm(int, int);
    void stop();
    void term(uint);
};