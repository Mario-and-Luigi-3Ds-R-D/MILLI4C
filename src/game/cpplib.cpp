#include <stddef.h>
#include <typeinfo>
#include <string>
#include <stdlib.h>
#include <locale.h>
#include <wchar.h>
#include <ctype.h>
#include <rt_locale.h>
#include <errno.h>
#include <System/Memory/MemAlcBase.hpp>

void operator delete(void* ptr)
{
    (void)ptr;
}

void operator delete[](void* ptr){
}