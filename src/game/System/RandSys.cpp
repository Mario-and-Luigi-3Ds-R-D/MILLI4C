#include <System/RandSys.hpp>

// STI

//RandSys gRand = *(RandSys*)0x2a6d365a;

static RandSys gRand;

/* RandSys::get() */

/* Gets a new random number. */

int RandSys::get() {
    int pRandNum;

    pRandNum = this->mState;
    if (pRandNum == 0) {
        pRandNum = 0x2A6D365A;
    }
    pRandNum = pRandNum + __ror(pRandNum + __ror(pRandNum, 0x1e), 0x1d);
    this->mState = pRandNum;
    return (u16)pRandNum;
}