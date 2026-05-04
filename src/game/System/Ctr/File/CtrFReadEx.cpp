#include <System/Ctr/File/CtrFRead.hpp>

CtrFReadEx::CtrFReadEx(void){ 
}

// TODO: CtrFSEx doesnt go here, ARMCC is a FUCKING BITCHASS CUNT WHO CAN SUCK MY FUCKING DICK.
//
// I felt mad in the moment, ant I am still.
void CtrFReadEx::term() {
    CtrFSEx* pFileSystem;

    pFileSystem = (CtrFSEx*)this->mpFileSystem->mRomPath;
    this->mCurrentJob = pFileSystem->mFileJob;
    pFileSystem->mFileJob = this;

    CtrFReadBase::term();
}