#include <System/Ctr/CtrNwAlc.hpp>

CtrNwAlc::CtrNwAlc(){
    this->mSetAlc = 0;
    this->mOpt = 0;
}

CtrNwAlc::~CtrNwAlc(){
    this->mSetAlc = 0;
}
// Start Non match

void CtrNwAlc::free(int){
}

void CtrNwAlc::init(int param_2, bool param_3){
}

void CtrNwAlc::start(int param_1, int param_2, int param_3) {
    *(int*)(param_1 + 4) = param_2;
    *(int*)(param_1 + 8) = param_3;
}

// End Non matching

// Start CtrNullNwAlc

CtrNullNwAlc::~CtrNullNwAlc(){
}

int CtrNullNwAlc::init(){
    return 0;
}

void CtrNullNwAlc::free(){
}