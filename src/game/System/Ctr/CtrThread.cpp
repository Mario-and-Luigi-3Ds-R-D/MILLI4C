#include <System/Ctr/CtrThread.hpp>
#include <System/Memory/Mem.hpp>
#include <nn/os/os_Thread.h>
#include <nn/svc/svc_Api.h>

/*CtrThread::~CtrThread() {
    nn::os::Thread* pThread;
    if (this->mThreadNum) {
        Mem::Free((void*)this->mThreadNum);
        this->mThreadNum = 0;
    }
    pThread = (nn::os::Thread*)&this->mCurrentThreadNum; 
    pThread->FinalizeImpl();
    if (pThread->mHandle != 0) {
        svcCloseHandle((int)pThread);
        pThread->mHandle = 0;
    }
    pThread --;
    return ;
}*/

// ARMCC Hates creating some things, so oopsy poopsy.

CtrThread::~CtrThread(){
}

void CtrThread::freeThread(){
    if (this->mThreadStatus != 0) {
        Mem::Free(this->mThreadStatus);
        this->mThreadStatus = 0;
    }
}