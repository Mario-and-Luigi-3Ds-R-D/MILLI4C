#pragma once

#include "types.hpp"


struct BinGlu3AcsIdxHdr{
protected:
    s32* currentOf;
public:
    int getOfs(int,uint *,uchar *);
};
