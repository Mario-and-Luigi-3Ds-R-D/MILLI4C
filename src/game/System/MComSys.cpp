#include <System/MComSys.hpp>
int sAreaNo;

uchar MComSys::getPrevAreaNo(void) {
    return (uchar) sAreaNo;
}

void MComSys::initPrevAreaNo(){
    sAreaNo = 0;
}

void MComSys::setPrevAreaNo(int pPrevArea){
    sAreaNo = pPrevArea;
}