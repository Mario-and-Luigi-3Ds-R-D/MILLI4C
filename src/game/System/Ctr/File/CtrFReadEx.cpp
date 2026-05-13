#include <System/Ctr/File/CtrFRead.hpp>

CtrFReadEx::CtrFReadEx(void){ 
}

void CtrFReadEx::term() {
    CtrFSEx* pFileSystem;

    pFileSystem = (CtrFSEx*)this->mpFileSystem->mRomPath;
    this->mCurrentJob = pFileSystem->mFileJob;
    pFileSystem->mFileJob = this;

    CtrFReadBase::term();
}