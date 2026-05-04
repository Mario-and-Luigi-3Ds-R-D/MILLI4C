#include <System/Ctr/File/CtrFEnd.hpp>
#include <nn/os/os_LightEvent.h>

void CtrFEnd::term() {
    ((nn::os::LightEvent *)&this->mTerminateStatus)->Signal();
}