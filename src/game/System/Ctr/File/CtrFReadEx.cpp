#include <System/Ctr/File/CtrFRead.hpp>

CtrFReadEx::CtrFReadEx(void){ 
}

void CtrFReadEx::start(){
}

void CtrFReadEx::term() {
    CtrFS* pFileSystem;

    pFileSystem = (CtrFS*)this->mFileSystem->mRomPath;
    (int)this->flag0 = pFileSystem->flag4;
    pFileSystem->flag4 = (int)this;

    CtrFReadBase::term();
}

JobReturnCode CtrFReadEx::getJobId(){
    return FREAD_EX;
}