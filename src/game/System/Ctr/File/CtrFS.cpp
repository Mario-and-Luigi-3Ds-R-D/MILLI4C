#include <System/Ctr/File/CtrFS.hpp>

// NONMATCH

CtrFS::CtrFS(){

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
void CtrFS::initCore(CtrJobMan* pJobManager, void* pSrc, int size){
    this->mJobMan = pJobManager;
    this->mCoreSource = pSrc;
    this->mCoreSize =  size;
}