#include <System/Memory/MemAlc.hpp>

MemAlc gMem;

MemAlc::MemAlc(){
    // weird ahh constructor cb2
}

/*void MemAlc::initGxLow(uint newHeap, size_t cmdBuffer, size_t cmdRequest){

}

void MemAlc::initBindList(){

}

void MemAlc::allocateMessage(){

};
*/
void MemAlc::initCore(void* heap, u32 size) {
    u32 newCore;

    this->mHeap = heap;
    this->flag2 = size + (int)heap;
    this->mCoreNumber = heap;
    this->mCoreStatus = heap;
    *(int*)heap = 0;
    newCore = this->flag2;
    *(int*)((int)heap + 4) = 0;
    *(int*)((int)heap + 8) = newCore;
}
/*
void MemAlc::destroy(){

}

void MemAlc::freeMemory(){

}*/

// MemAlc::vtable

void MemAlc::free(u32 param_1){
    // STUB
}

MemAlcBase* MemAlc::allocCore(u32, u32){
    // STUB
}