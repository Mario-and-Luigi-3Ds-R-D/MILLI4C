#include <System/Ctr/CtrSave.hpp>

CtrSaveWrite::CtrSaveWrite(){
    this->mCurrentJob = 0;
    this->mTerminateStatus = 0;
    this->flag5 = 0;
}

void CtrSaveWrite::start(){
    // TODO
}

JobReturnCode CtrSaveWrite::getJobId(){
    return SAVE_WRITE;
}