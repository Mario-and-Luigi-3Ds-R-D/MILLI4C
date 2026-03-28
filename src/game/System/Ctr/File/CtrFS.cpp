#include <System/Ctr/File/CtrFS.hpp>

// Start Non Match

CtrFS::CtrFS(){
}

CtrFS::~CtrFS(){
}

void CtrFS::cancel(){
}

// Match

int CtrFS::unmountSaveData(){
}

// End Match

void CtrFS::mountSaveData(){
}

// Match

void CtrFS::initCore(CtrJobMan* pJobManager, void* param_2, int param_3){
    this->mJobMan = pJobManager;
    this->mCoreStatus = param_2;
    this->mCoreNumber = param_3;
}

// Start CtrFSEx

