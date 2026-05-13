#pragma once

#include "types.hpp"
#include <nn/fnd/fnd_DateTime.h>

class RandSys{
public:
    int mState;

    int get();
};

extern RandSys gRand;