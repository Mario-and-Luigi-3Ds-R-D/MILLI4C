#include <System/Memory/MemAlcCtr.hpp>
#include <System/Ctr/CtrModule.hpp>
#include <System/Memory/Mem.hpp>
#include <nn/ro/ro_Api.h>

CtrModule::ModulePtrs CtrModule::_module = { nullptr, nullptr, nullptr };
MemAlcCtr gMemCtr;

/*void MemAlcCtr::mount(uint flags,,uint,uint,bool){
    // STUB
}

void MemAlcCtr::mountRO(int){
    // STUB
}

void MemAlcCtr::finalize(){
    // STUB
}
*/
void MemAlcCtr::finalizeRO(){
    if (CtrModule::_module._disable != 0) {
        CtrModule::_module._disable->Unregister();
        nn::ro::Finalize();
        if (CtrModule::_module._state != 0) {
            Mem::Free(CtrModule::_module._state);
            CtrModule::_module._state = 0;
        }
        CtrModule::_module._disable = 0;
    }
    CtrModule::_module._alcBase = 0;
}