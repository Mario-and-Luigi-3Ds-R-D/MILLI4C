#include <System/Memory/MemAlcBase.hpp>
#include <nn/fnd/fnd_ExpHeap.h>
//#include <locale> // CPPLIB  M A X  S Y M B O L S .
#include <string>
#include <vector>

void* operator new(unsigned int size, MemAlcBase* heap, const char* tag,unsigned int flags) throw(){
    heap->allocCore(size, flags);
}

void* operator new[](uint size, MemAlcBase* heap, const char* tag,uint flags){
    heap->allocCore(size, flags);
}

// TODO: Fix this

void operator delete(void* ptr) {
    void* allocator = *(void**)((char*)ptr - 4);
    void** vtable = *(void***)allocator;
    ((void (*)(void*, void*))vtable[0])(allocator, ptr);
}

void operator delete[](void* ptr) {
    void* allocator = *(void**)((char*)ptr - 4);
    void** vtable = *(void***)allocator;
    ((void (*)(void*, void*))vtable[0])(allocator, ptr);
}