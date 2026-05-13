#include <System/Ctr/File/CtrFRead.hpp>
#include <System/Memory/Mem.hpp>

CtrFReadBase::CtrFReadBase(){
    this->mCurrentJob = 0;
    this->mTerminateStatus = 0;
    (int)this->mReadStatus = 0;
}

void CtrFReadBase::start(){
    // TODO
}


void CtrFReadBase::term() {
    if (this->mReadStatus & 1) {
        if ((this->mTerminateStatus != 0) && (this->mpActiveMem != 0)) {
            Mem::Free(this->mpActiveMem);
            this->mpActiveMem = 0;
        }
        this->mReadStatus = (this->mReadStatus & ~1);
    }
}

JobReturnCode CtrFReadBase::getJobId(){
    return FREAD_BASE;
}

void* CtrFReadBase::popMemory(bool flag) {
    void* activeMem = this->mpActiveMem;
    this->mpActiveMem = flag ? nullptr : this->mpActiveMem;
    return activeMem;
}