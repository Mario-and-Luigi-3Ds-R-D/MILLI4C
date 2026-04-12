#include <System/Memory/Mem.hpp>

#ifdef NON_MATCHING
#endif
void Mem::Free(void* arg0){
    void** block = *(void***)((char*)arg0 - 4);
    void** vtable = (void**)*block;
    void (*func)(void**, void*) = (void (*)(void**, void*))*vtable;
    func(block, arg0);
}; // STUB