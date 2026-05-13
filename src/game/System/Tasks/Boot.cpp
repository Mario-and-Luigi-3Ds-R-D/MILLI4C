#include <System/Tasks/Boot.hpp>
#include <System/AppletMan.hpp>
#include <System/Memory/MemAlc.hpp>
#include <System/Memory/MemAlcCtr.hpp>
#include <nn/os/os_Memory.h>
#include <nn/applet/CTR/applet_Wrapper.h>

extern TaskMan gTaskMainMan;
extern MemAlc gMem;

// nnMain -> Boot() & TaskMan::entry(Task* currentTask)
void Boot::entry() {
    MemAlcBase* heap = &gMem;
    Boot* entry = new(heap, nullptr, 0) Boot();

    gTaskMainMan.entry(entry);
}

void Boot::initialize(){
    AppletMan::Sleep::beginFromSleep();
    nn::applet::CTR::EnableSleep(1);
}
