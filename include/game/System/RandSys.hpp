#pragma once

#include "types.hpp"

class RandSys{
public:
    static int get(int*);
};

extern RandSys gRand;