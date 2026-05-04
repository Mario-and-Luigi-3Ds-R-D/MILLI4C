#include <System/Ctr/File/CtrFS.hpp>
#include <System/Ctr/CtrArcFile.hpp>
#include <System/Ctr/CtrModule.hpp>
#include <System/Memory/MemAlcBase.hpp>
#include <nn/os/os_CriticalSection.h>
#include <nn/os/os_LightEvent.h>

CtrFSEx::~CtrFSEx(){
    this->term();
}

__attribute__((noinline)) void CtrFSEx::term(){

}