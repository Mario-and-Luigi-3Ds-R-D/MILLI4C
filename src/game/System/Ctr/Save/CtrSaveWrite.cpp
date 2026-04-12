#include <System/Ctr/CtrSave.hpp>

CtrSaveWrite::CtrSaveWrite(){
    this->flag0 = 0;
    this->flag1 = 0;
    this->flag5 = 0;
}

void CtrSaveWrite::start(){
}

JobReturnCode CtrSaveWrite::getJobId(){
    return SAVE_WRITE;
}