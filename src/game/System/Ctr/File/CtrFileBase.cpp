
#include <System/Ctr/File/CtrFileBase.hpp>
#include <System/Ctr/File/CtrFRead.hpp>
#include <nn/fs/CTR/MPCore/fs_UserFileSystem.h>

CtrFileBase::CtrFileBase(){
    this->mUncompFile.mLightEvent.Initialize(false);
}

CtrFileBase::~CtrFileBase(){
    CtrSaveFormat::close();
}

/*
void CtrFileBase::open(wchar_t const* pPath){
    CtrFUncompSize* pUncompSize;

    this->TryOpenImpl();
}
*/
void CtrFileBase::close(){
    CtrSaveFormat::close();
    this->Finalize();
}

bool CtrFileBase::isBusy() {
    bool canDoFurther;
    CtrFReadBase* readBase;

    canDoFurther = 0;
    this->mpFileSystem->mJobMan->mCriticalSection.Enter();
    readBase = (CtrFReadBase*)this->mpFileSystem->mJobMan->mIsDone;
    if(readBase != 0){
        do {
            if((readBase->get(0x81000001, 0xFFFFFF01) != 0) && (readBase->mpFileSystem == this)){ // end FReader Job...
                canDoFurther = true;
                break;
            }
            readBase = (CtrFReadBase*)readBase->mCurrentJob;
        } while(readBase != 0);
    }
    this->mpFileSystem->mJobMan->mCriticalSection.Leave();
    return canDoFurther;
}

/*CtrFileBase::read(CtrFRead* pFileReader, uint* pFileOffset){

}
*/