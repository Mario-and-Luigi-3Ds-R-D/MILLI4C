#include <nn/svc/svc_Api.h>
#include <System/AllApplication.hpp>

extern "C" __asm void nninitRegion(){
    ldr     r0,=__cpp(0x006E14A8)
    ldr     r1,=__cpp(0x0071211C)
    mov     r2,#0x0
loop
    cmp     r0,r1
    strcc   r2,[r0],#4 ; Badge::PARAM
    bcc     loop
    bx      lr
};
extern "C" void nninitLocale(){
    return;
};
extern "C" void nninitSystem(){
    return;
};
extern "C" void nninitStartUp(){
    return;
};
extern "C" void __cpp_initialize_aeabi_(){
    return;
};
extern "C" void nninitCallStaticInitializers(){
    return;
};
extern "C" void nninitSetup(){
    return;
};
extern "C" void nnMain(){
    return;
};

extern "C" __asm void __ctr_start(){
    bl __cpp(nninitRegion)
    bl __cpp(nninitLocale)
    bl __cpp(nninitSystem)
    bl __cpp(nninitStartUp)
    blx __cpp(__cpp_initialize_aeabi_) // this is being nopped
    bl __cpp(nninitCallStaticInitializers)
    bl __cpp(nninitSetup)
    bl __cpp(nnMain)
    b __cpp(nn::svc::ExitProcess)
}