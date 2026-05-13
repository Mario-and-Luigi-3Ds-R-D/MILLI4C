#include <System/Ctr/CtrSave.hpp>

CtrSaveRead::CtrSaveRead(){
    this->mCurrentJob = 0;
    this->mTerminateStatus = 0;
    this->_1C = 0;
    this->mpJob = 0;
}

void CtrSaveRead::start(){
    // TODO
}

JobReturnCode CtrSaveRead::getJobId(){
    return SAVE_READ;
}