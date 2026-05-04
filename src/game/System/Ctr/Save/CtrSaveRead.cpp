#include <System/Ctr/CtrSave.hpp>

CtrSaveRead::CtrSaveRead(){
    this->mCurrentJob = 0;
    this->mTerminateStatus = 0;
    this->flag5 = 0;
    this->flag6 = 0;
}

void CtrSaveRead::start(){
    // TODO
}

JobReturnCode CtrSaveRead::getJobId(){
    return SAVE_READ;
}