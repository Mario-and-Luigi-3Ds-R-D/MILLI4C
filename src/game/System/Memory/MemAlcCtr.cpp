#include <System/Memory/MemAlcCtr.hpp>
#include <System/Ctr/File/CtrModuleFile.hpp>
#include <System/Memory/Mem.hpp>
#include <nn/ro/ro_Api.h>

CtrModuleRO gCtrModuleRO;
MemAlcCtr gMemCtr;

MemAlcCtr::~MemAlcCtr(){
    this->mMemAlc->mHeap = 0;
}

/*void MemAlcCtr::mountFS(int,int,int,int){
    // STUB
}

void MemAlcCtr::mountRO(int){
    // STUB
}

void MemAlcCtr::finalizeFS(){
    // STUB
}
*/
void MemAlcCtr::finalizeRO(){
    if (gCtrModuleRO._disable != 0) {
        gCtrModuleRO._disable->Unregister();
        nn::ro::Finalize();
        if (gCtrModuleRO._state != 0) {
            Mem::Free(gCtrModuleRO._state);
            gCtrModuleRO._state = 0;
        }
        gCtrModuleRO._disable = 0;
    }
    gCtrModuleRO._alcBase = 0;
}