#include <System/Ctr/CtrNwAlc.hpp>
#include <System/Memory/MemAlcBase.hpp>
#include <System/Memory/Mem.hpp>

#ifdef CTRNWALC
#endif

CtrNwAlc::CtrNwAlc(){
    this->mSetAlc = 0;
    this->mOperator = 0;
}

CtrNwAlc::~CtrNwAlc(){
    this->mSetAlc = 0;
}

void CtrNwAlc::free(void* size){
    Mem::Free(size);
}

void CtrNwAlc::init(int param_2, bool param_3){
}

void CtrNwAlc::start(MemAlcBase* pAlcBase, int arg2) {
    this->mSetAlc = pAlcBase;
    this->mOperator = arg2;
}

#ifdef CTRNULLNWALC
#endif

CtrNullNwAlc::~CtrNullNwAlc(){
}

int CtrNullNwAlc::init(){
    return 0;
}

void CtrNullNwAlc::free(){
}