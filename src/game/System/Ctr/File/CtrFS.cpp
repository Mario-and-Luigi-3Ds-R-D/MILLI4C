#include <System/Ctr/File/CtrFS.hpp>

// NONMATCH

CtrFS::CtrFS(){
/*    this->flag1 = (int*) 0xe7e3ffff;
    this->mCtrFEnd.mCurrentJob = 0;
    this->mCtrFEnd.mTerminateStatus = 0;
    this->mRomPath = 0;
    this->mCoreNumber = 0;
    *(int*)this->mFSMountStatus.usFlag1 = 0;
    this->mCtrSaveFormat.mCurrentJob = 0;
*/
}

CtrFS::~CtrFS(){
}

/*
void CtrFS::cancel(){
}

// MATCHED 100%
int CtrFS::unmountSaveData(){
}

// MATCHED 93%
void CtrFS::mountSaveData(){
}


uint CtrFS::mountSaveFile(){
}

Result CtrFS::formatSave(){
}
*/

// MATCHED 100%
void CtrFS::initCore(CtrJobMan* pJobManager, void* status, int number){
    this->mJobMan = pJobManager;
    this->mCoreStatus = status;
    this->mCoreNumber = number;
}