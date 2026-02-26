#pragma once

#include "types.hpp"

#include "Boot/FieldBootInfo.hpp"
#include "system/Ctr/CtrNwAlc.hpp"
#include "system/TaskMainBase.hpp"

class FieldSystem : public TaskMainbase{
    CtrNwAlc* mNwAlc;
    u8 unk[316];
public:
    virtual ~FieldSystem();
    virtual void vtable(); //could be wrong 100%

    FieldSystem(FieldBootInfo const*); //vtable @ 0x006B262C 
};

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