#pragma once

#include "types.hpp"
#include <nn/fnd/fnd_DateTime.h>

class RandSys{
public:
    int mState;

    int get();

    class DateTimeMan{
    protected:
        int mNumber;
        int flag_0x4;
        nn::fnd::DateTime* mDateTime;
        int flag_0xc;
    public:
        void GetNow();
        void calcNumber(int);
    };
};

extern RandSys gRand;
extern RandSys::DateTimeMan gDtMan;