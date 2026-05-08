#include <System/Ctr/CtrThread.hpp>
#include <System/Memory/Mem.hpp>
#include <nn/os/os_Thread.h>
#include <nn/svc/svc_Api.h>


CtrThread::~CtrThread(){
//    this->freeThread();
//    this->mCurrentThread.~Thread();
}

void CtrThread::freeThread(){
    if (this->mThread.mHandle != 0){
        Mem::Free(reinterpret_cast<void*>((uintptr_t)this->mThread.mHandle.GetHandle())); // Gets current thread handle. Thread->Handle->GetHandle return mHandle.
        this->mThread.mHandle = 0;
    }
}