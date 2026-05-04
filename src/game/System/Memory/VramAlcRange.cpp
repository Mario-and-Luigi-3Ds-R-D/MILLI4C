#include "System/Memory/VramAlcRange.hpp"

VramAlcRange::VramAlcRange(){
    *(byte*)&this->mpMemAlc = 0;
    this->mStatus = 0;
}

NONMATCHING
// Watch it just Inline term since its a deconstructor lmao
//
// ~2 Days later, it does. Thank you past luigifan.
VramAlcRange::~VramAlcRange(){
//    this->term();
}

u32 VramAlcRange::allocSize(u32 allocedSize, u32 inVaildSize) {
    u32 newSize;

    newSize = 0xFFFFFFFF;
    switch (allocedSize) {
    case 0x10000:
        return inVaildSize;
    case 0x20000:
        return 0;
    case 0x30000:
        newSize = 1;
    default:
        return newSize;
    }
}

void VramAlcRange::initCore(void* buf,u32 size,u32 param_2){
    // TODO
}

void VramAlcRange::merge(){
}

void VramAlcRange::split(u32 size){
    // TODO
}

/*void VramAlcRange::term(){
    int addOnto = 0;
    if(*(byte*)&this->mpMemAlc > addOnto){ // Ts isnt signed but no BLE if it isnt.. idk
        do{
            addOnto += 1;
        }while ((int)(uint)*(byte *)&this->mpMemAlc > addOnto);
    }
    this->mStatus = 0;
}*/

// vtable
u32 VramAlcRange::allocCore(u32,bool,u32){
    // TODO
}

VramAlcBase* VramAlcRange::free(){
    // TODO
}


// VramAlcRange::Pool

VramAlcRange::Pool::Pool(){
    this->flag1 = 0;
    this->flag2 = 0;
    this->flag3 = 0;
    this->flag4 = 0;
}

VramAlcRange::Pool::~Pool(){
}