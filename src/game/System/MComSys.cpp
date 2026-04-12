#include <System/MComSys.hpp>

int MComSys::_sAreaNo;

int MComSys::getPrevAreaNo(void) {
    return _sAreaNo;
}

void MComSys::initPrevAreaNo(){
    _sAreaNo = 0;
}

void MComSys::setPrevAreaNo(int pPrevArea){
    _sAreaNo = pPrevArea;
}