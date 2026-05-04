#include <System/Ctr/CtrThread.hpp>
#include <System/Memory/Mem.hpp>
#include <nn/os/os_Thread.h>
#include <nn/svc/svc_Api.h>

/*CtrThread::~CtrThread() {
    nn::os::Thread* pThread;
    if (this->mThread.mHandle != 0) {
        Mem::Free((void*)&this->mThread.mHandle);
        this->mThread.mHandle = 0;
    }
    pThread = &this->mThread;
    pThread->FinalizeImpl();
    pThread->Close();
    return;
}*/

CtrThread::~CtrThread(){
    // STUB 4 VTABLE
}

void CtrThread::freeThread(){
    void* src;
    *(nn::Handle*)src = this->mThread.mHandle;
    if (src != 0) {
        Mem::Free(src);
        this->mThread.mHandle = 0;
    }
}