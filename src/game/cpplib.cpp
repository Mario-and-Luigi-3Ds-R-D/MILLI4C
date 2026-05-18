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

/* Deleting function, it looks ugly, but its better than it was, actually! */

void operator delete(void* ptr) {
    MemAlcBase* heap = *(MemAlcBase**)((uint)ptr - 4);
    heap->free((uint)ptr);
}

void operator delete[](void* ptr) {
    MemAlcBase* heap = *(MemAlcBase**)((uint)ptr - 4);
    heap->free((uint)ptr);
}