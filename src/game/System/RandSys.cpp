#include <System/RandSys.hpp>

RandSys gRand = *(RandSys*)0x2a6d365a; // Initialize gRand STI.
RandSys::DateTimeMan gDtMan;

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

NONMATCHING
/*void RandSys::DateTimeMan::GetNow(){
    nn::fnd::DateTime* datetime;
    s32 stack;

    datetime->GetNow();
    this->mDateTime = datetime;
    this->flag_0xc = stack;
}*/

void RandSys::DateTimeMan::calcNumber(int newNumber){
    this->mNumber = newNumber + this->mNumber;
}