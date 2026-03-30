#include <stddef.h>
#include <typeinfo>
#include <string>
#include <stdlib.h>
#include <locale.h>
#include <wchar.h>
#include <ctype.h>
#include <rt_locale.h>
#include <errno.h>
#include "cpplib.hpp"
#include "System/Memory/MemAlcBase.hpp"

void operator delete(void* ptr)
{
    (void)ptr;
}

void operator delete[](void* ptr){
}

void nndbgPanic(){
}

/*namespace __cxxabiv1{
    __class_type_info::~__class_type_info(){
    }
    void __class_type_info::FUN_00102838(){
        this->~__class_type_info(); 
        return; 
    }

    __si_class_type_info::~__si_class_type_info(){
    }
    void __si_class_type_info::FUN_00102840(){
        this->~__si_class_type_info();
    }

    __vmi_class_type_info::~__vmi_class_type_info(){
    }
    void __vmi_class_type_info::FUN_00102850(){
        this->~__vmi_class_type_info();
    }

}*/