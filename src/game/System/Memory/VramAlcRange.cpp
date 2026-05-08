#include "System/Memory/VramAlcRange.hpp"

VramAlcRange::VramAlcRange(){
    this->mRange = 0;
    this->mStatus = 0;
}

NONMATCHING
// Watch it just Inline term since its a deconstructor lmao
//
// ~2 Days later, it does. Thank you past luigifan.
VramAlcRange::~VramAlcRange(){
//    this->term();
}

uint VramAlcRange::getRangeIndexFor(uint size, uint indexFor64K) {
    uint result = 0xFFFFFFFF;

    switch (size) {
    case 64 * 1024:
        result = indexFor64K;
        break;
        
    case 128 * 1024:
        result = 0;
        break;
        
    case 192 * 1024:
        result = 1;
        break;
    }
    
    return result;
}

void VramAlcRange::initCore(void* buf,u32 size,u32 param_2){
    // TODO
}

void VramAlcRange::merge(){
}

void VramAlcRange::split(u32 size){
    // TODO
}

/*void VramAlcRange::term() {
    int addOnto = 0;
    if ((int)this->mStatus > addOnto) {
        do {
            addOnto += 1;
        } while ((int)this->mStatus > addOnto);
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