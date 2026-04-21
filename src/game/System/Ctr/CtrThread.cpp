#include <System/Ctr/CtrThread.hpp>
#include <System/Memory/Mem.hpp>
#include <nn/os/os_Thread.h>
#include <nn/svc/svc_Api.h>

/*CtrThread::~CtrThread() {
    nn::os::Thread* pThread;
    if (this->mThreadStatus) {
        Mem::Free((void*)this->mThreadStatus);
        this->mThreadStatus = 0;
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

CtrThread::~CtrThread(){
    
}

void CtrThread::freeThread(){
    if (this->mThreadStatus != 0) {
        Mem::Free(this->mThreadStatus);
        this->mThreadStatus = 0;
    }
}