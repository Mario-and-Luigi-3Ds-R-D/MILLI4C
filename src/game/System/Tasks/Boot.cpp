#include <System/Tasks/Boot.hpp>
#include <System/AppletMan.hpp>
#include <System/Memory/MemAlc.hpp>
#include <System/Memory/MemAlcCtr.hpp>
#include <nn/applet/CTR/applet_Wrapper.h>

extern TaskMan gTaskMainMan;
extern MemAlc gMem;

Boot::Boot(){
    // VStub
}

Boot::~Boot(){
    // VStub
}

void Boot::update(){
    // VStub
}
// nnMain -> Boot() & TaskMan::entry(Task* currentTask)
void Boot::entry() {
    MemAlcBase* heap = &gMem;
    Boot* entry = new(heap, nullptr, 0) Boot();

    gTaskMainMan.entry((Task*)entry);
}

void Boot::initialize(){
    AppletMan::Sleep::beginFromSleep();
    nn::applet::CTR::EnableSleep(1);
}