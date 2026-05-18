#include <System/Ctr/CtrThread.hpp>
#include <System/Memory/Mem.hpp>
#include <nn/os/os_Thread.h>
#include <nn/svc/svc_Api.h>

void CtrThread::freeThread(){
    Mem::Clear((void**)&this->mThreadNumber);
}