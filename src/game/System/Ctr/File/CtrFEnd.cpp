#include <System/Ctr/File/CtrFEnd.hpp>
#include <nn/os/os_LightEvent.h>

// Hack cast to Signal();
void CtrFEnd::term() {
    ((nn::os::LightEvent *)&this->mTerminateStatus)->Signal();
}