#include <System/Ctr/CtrModule.hpp>
#include <System/Memory/Mem.hpp>
#include <nn/ro/ro_Api.h>

// Start Non Match
//
#ifdef CTRMODULE
#endif

CtrModule::CtrModule(){
    this->mModuleNum = 0;
    this->flag1 = 0;
    this->flag2 = 0;
}

CtrModule::~CtrModule(){
}

#ifdef CTRLOADMODULE
#endif
/*

CtrLoadModule::CtrLoadModule(){
}

void CtrLoadModule::start(){
}

*/