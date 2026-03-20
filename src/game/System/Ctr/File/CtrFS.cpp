#include <System/Ctr/File/CtrFS.hpp>

// Start Non Match

CtrFS::CtrFS(){
}

CtrFS::~CtrFS(){
}

void CtrFS::cancel(){
}

// Match

void CtrFS::unmountSaveData(){
}

// End Match

void CtrFS::mountSaveData(){
}

// Match

void CtrFS::initCore(CtrJobMan* pJobManager, void* param_2, int param_3){
    this->flag2 = (int)pJobManager;
    this->flag3 = (int)param_2;
    this->flag4 = param_3;
}

// Start CtrFSEx

