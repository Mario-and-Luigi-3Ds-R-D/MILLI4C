#pragma once

#include "types.hpp"

class RandSys{
public:
    int mState;

    int get(int*);
};

extern RandSys gRand;