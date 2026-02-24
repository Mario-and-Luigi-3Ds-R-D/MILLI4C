#pragma once

#include "game/types.hpp"

class Job{
    int* unk_0x4; //0x4
    int* unk_0x8; //Job::end, 0x8
    u8 unk_0xc[4]; //0xc
public:

    int* end(int* unk_0x8);
};

class JobMan : public Job{
public:
    virtual ~JobMan();
};