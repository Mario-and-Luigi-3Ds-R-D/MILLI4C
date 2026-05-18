#include <System/Ctr/File/CtrFRead.hpp>

CtrFReadEx::CtrFReadEx(void){ 
}

void CtrFReadEx::term() {
    CtrFSEx* pFileSystem;

    pFileSystem = (CtrFSEx*)this->mpFileSystem->mpFileSystem;
    this->mCurrentJob = pFileSystem->mFileJob;
    pFileSystem->mFileJob = this;

    CtrFReadBase::term();
}