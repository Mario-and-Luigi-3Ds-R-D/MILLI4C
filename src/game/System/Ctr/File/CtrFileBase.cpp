
#include <System/Ctr/File/CtrFileBase.hpp>
#include <nn/fs/CTR/MPCore/fs_UserFileSystem.h>

CtrFileBase::CtrFileBase(){
    this->mUncompFile.mLightEvent.Initialize(false);
}

CtrFileBase::~CtrFileBase(){
//    this->mUncompFile;
//    this->close();
}

/*
void CtrFileBase::open(wchar_t const* pPath){
    CtrFUncompSize* pUncompSize;
    // End
    this->SetFlagsImpl();
    this->TryGetSize(pPath, 1);
}
*/
void CtrFileBase::close(){
    CtrSaveFormat::close();
    this->Finalize();
}