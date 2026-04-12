#include <System/Ctr/File/CtrFS.hpp>

// NONMATCH

CtrFS::CtrFS(){
}

CtrFS::~CtrFS(){
}

void CtrFS::cancel(){
}

// MATCHED 100%
int CtrFS::unmountSaveData(){
}

// MATCHED 93%
void CtrFS::mountSaveData(){
}

/*
uint CtrFS::mountSaveFile();
*/

/*
Result CtrFS::formatSave();
*/

// MATCHED 100%
void CtrFS::initCore(CtrJobMan* pJobManager, void* param_2, int param_3){
    this->mJobMan = pJobManager;
    this->mCoreStatus = param_2;
    this->mCoreNumber = param_3;
}