#include <System/MComSys.hpp>

int AreaNo;
uchar MComSys::getPrevAreaNo(void) {
    return (uchar) AreaNo;
}

void MComSys::initPrevAreaNo(){
    AreaNo = 0;
}

void MComSys::setPrevAreaNo(int pPrevArea){
    AreaNo = pPrevArea;
}