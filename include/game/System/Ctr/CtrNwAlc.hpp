#pragma once

#include "game/types.hpp"

class CtrNwAlc {
    s32  mSetAlc;
    u32  mOpt;
public:
    virtual ~CtrNwAlc();
    virtual void init(int, bool);
    virtual void free(int);

    void start(int, int);
    CtrNwAlc(void);
};

class CtrNullNwAlc{
public:

    virtual ~CtrNullNwAlc(){
    }
    virtual int init(){
        return 0;
    }
    virtual void free(){
    }

};