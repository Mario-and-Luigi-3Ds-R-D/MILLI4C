#pragma once

#include "types.hpp"

class Mem{
public:
    static void Free(void*);
    void Fill(void*,uint,uint);
    void Copy(void*, void const*, uint);
};