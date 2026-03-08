#include <stddef.h>
#include "System/Memory/MemAlcBase.hpp"

void operator delete(void* ptr)
{
    (void)ptr;
}

void operator delete[](void* ptr){

}