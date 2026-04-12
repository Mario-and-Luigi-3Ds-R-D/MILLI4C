#include <System/Ctr/CtrSave.hpp>

CtrSaveRead::CtrSaveRead(){
    this->flag0 = 0;
    this->flag1 = 0;
    this->flag5 = 0;
    this->flag6 = 0;
}

void CtrSaveRead::start(){
}

JobReturnCode CtrSaveRead::getJobId(){
    return SAVE_READ;
}