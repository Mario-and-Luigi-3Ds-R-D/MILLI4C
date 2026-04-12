#include <System/Memory/MemAlcBase.hpp>

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

//void free(void* heap){
//
//}

//void malloc()