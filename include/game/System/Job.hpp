#pragma once

#include "game/types.hpp"

class Job{
    int* unk_0x4;
    int* unk_0x8; //Job::end
    u8 unk_0xc[4];
public:

    int* end(int* unk_0x8);
};

class JobMan{
    Job mBase;
public:
    virtual ~JobMan();
};