
#include <System/Ctr/File/CtrFileBase.hpp>
#include <nn/fs/CTR/MPCore/fs_UserFileSystem.h>

CtrFileBase::CtrFileBase(){
    this->mUncompFile.mLightEvent.Initialize(false);
}

CtrFileBase::~CtrFileBase(){
//  this->close();
}

/*
void CtrFileBase::open(wchar_t const* __file){
    CtrFUncompSize* pUncompSize;
    // End
    this->SetFlagsImpl();
    this->TryGetSize(__file, 1);
}
*/
void CtrFileBase::close(){
    CtrSaveFormat::close();
    this->Finalize();
}

//void CtrFileBase::cancel(void){
//}

//bool CtrFileBase::isBusy(void){

//}