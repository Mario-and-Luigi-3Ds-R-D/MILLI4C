#include <System/Ctr/File/CtrFRead.hpp>

CtrFReadBase::CtrFReadBase(){
    this->flag0 = 0;
    this->flag1 = 0;
    this->flag7 = 0;
}

// Non Match

void CtrFReadBase::term(){
}

// End Non Match

int CtrFReadBase::vt_0xc(){
    return 0x81000001;
}

// Start CtrFReadEx

CtrFReadEx::CtrFReadEx(){ 
}

// Non Match

void CtrFReadEx::start(){
}

void CtrFReadEx::term(){
}

// End Non Match

int CtrFReadEx::vt_0xc(){
    return 0x81000003;
}