#include <System/Ctr/File/CtrFRead.hpp>
#include <System/Memory/Mem.hpp>

CtrFReadBase::CtrFReadBase(){
    this->flag0 = 0;
    this->flag1 = 0;
    (int)this->flag8 = 0;
}

void CtrFReadBase::start(){
}


void CtrFReadBase::term() {
    if (this->flag8 & 1) {
        if ((this->flag1 != 0) && (this->flag4 != 0)) {
            Mem::Free(this->flag4);
            this->flag4 = 0;
        }
        this->flag8 = (this->flag8 & ~1);
    }
}

JobReturnCode CtrFReadBase::getJobId(){
    return FREAD_BASE;
}