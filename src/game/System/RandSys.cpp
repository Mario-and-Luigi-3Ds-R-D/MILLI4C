#include <System/RandSys.hpp>

int RandSys::get(int* param_1) {
    int pRandNum;

    pRandNum = this->mState;
    if (pRandNum == 0) {
        pRandNum = 0x2A6D365A;
    }
    pRandNum = pRandNum + __ror(pRandNum + __ror(pRandNum, 0x1e), 0x1d);
    this->mState = pRandNum;
    return (u16)pRandNum;
}