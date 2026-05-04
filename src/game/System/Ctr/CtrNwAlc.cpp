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

void CtrNwAlc::Free(void* size){
    Mem::Free(size);
}

void* CtrNwAlc::Alloc(size_t size, u8 alignment) {

}

void CtrNwAlc::init(MemAlcBase* pAlcBase, int op) {
    this->mSetAlc = pAlcBase;
    this->mOperator = op;
}

#ifdef CTRNULLNWALC
#endif

CtrNullNwAlc::~CtrNullNwAlc(){
}

void* CtrNullNwAlc::Alloc(){
    return 0;
}

void CtrNullNwAlc::Free(){
}