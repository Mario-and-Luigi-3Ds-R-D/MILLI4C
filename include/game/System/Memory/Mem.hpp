#pragma once

#include "types.hpp"

class Mem{
public:
    static void Free(void*);
    void Fill(void*,uint,uint);
    void Copy(void*, void const*, uint);

    static void Clear(void**);
};

// Takes in an object -> Mem::Free(obj);

// EXAMPLE:
//  CtrThread::freeThread()
//  Mem::Clear((void**)&this->mThread.mHandle.mHandle);
//  
//  dest now becomes what we enter in.
//  Cast must be void**

inline void Mem::Clear(void** dest){
    if(*dest != 0){
        Mem::Free(*dest);
        *dest = 0;
    }
}