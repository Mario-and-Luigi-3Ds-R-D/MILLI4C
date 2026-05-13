#pragma once

#include "nn/fnd/fnd_DateTime.h"

class DateTimeMan{
protected:
    int mNumber;
    int flag_0x4;
    nn::fnd::DateTime mDateTime;
public:
    void GetNow();
    void calcNumber(int);
};

extern DateTimeMan gDtMan;