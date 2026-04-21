#include <System/Memory/MemAlcBase.hpp>
#include <nn/fnd/fnd_ExpHeap.h>

typedef nn::fnd::ExpHeapTemplate<nn::os::LockPolicy::Object<nn::os::CriticalSection> > SystemExpHeap;

namespace{
    SystemExpHeap* spSystemHeap = 0;
    SystemExpHeap::Allocator* spSystemAllocator = 0;  //<! Allocator for the system heap
}

void* operator new(uint size, MemAlcBase* heap, char const* alignment,uint flags){
    heap->allocCore(size, flags);
}

void* operator new[](uint size, MemAlcBase* heap, char const* alignment,uint flags){
    heap->allocCore(size, flags);
}

void operator delete(void* ptr) {
    void* allocator = *(void**)((char*)ptr - 4);
    void** vtable = *(void***)allocator;

    ((void (*)(void*, void*))vtable[0])(allocator, ptr);
}

extern "C" {
__weak void* malloc(std::size_t size){
    /*static nn::fnd::ExpHeapBase* sSystemHeap;
    nn::os::CriticalSection* cs = (nn::os::CriticalSection*)((u8*)sSystemHeap + 0x58); // ExpHeapImpl
        
    cs->Enter();
    void* ptr = sSystemHeap->Allocate(size, 4, 0, (nn::fnd::ExpHeapBase::AllocationMode)0, false);
    cs->Leave();
    return ptr;*/
    spSystemHeap->Allocate(size,4,0,(nn::fnd::ExpHeapBase::AllocationMode)0,false);
}

extern "C" void free(void* ptr){
    if (ptr){
        spSystemHeap->Free(ptr);
    }
}
}