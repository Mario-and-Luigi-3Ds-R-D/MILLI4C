#include <System/Ctr/CtrJobMan.hpp>
#include <nn/os/os_CriticalSection.h>
#include <nn/os/os_LightEvent.h>
#include <nn/os/CTR/os_ErrorHandler.h>
#include <nn/svc/svc_Api.h>

#ifdef CTRJOBMAN
#endif

CtrJobMan::CtrJobMan(){
}

//CtrJobMan::~CtrJobMan(){
//}

//void CtrJobMan::start(){
//}

void CtrJobMan::enqueue(Job* pJob) {
    this->mCriticalSection.Enter();
    this->JobMan::enqueue(pJob);
    this->mLightEvent.Signal();
    this->mCriticalSection.Leave();
}

void CtrJobMan::jam(Job* pJob){
    this->mCriticalSection.Enter();
    this->JobMan::jam(pJob);
    this->mLightEvent.Signal();
    this->mCriticalSection.Leave();
}

bool CtrJobMan::release(Job* pJob) {
    this->mCriticalSection.Enter();
    this->JobMan::release(pJob);
    this->mCriticalSection.Leave();
}

Job* CtrJobMan::release(){
    this->mCriticalSection.Enter();
    this->JobMan::release();
    this->mCriticalSection.Leave();
}

void CtrJobMan::term(Job* pJob){
}

bool CtrJobMan::isBusy(Job* pJob) {
    this->mCriticalSection.Leave();
    this->JobMan::isBusy(pJob);
    this->mCriticalSection.Leave();
}

int CtrJobMan::end() {
    int pDone;

    pDone = (int)this->mIsDone;
    if (pDone != 0) {
        pDone = 1;
    }
    return pDone;
}

int CtrJobMan::startCounter(){
    return (static_cast<s32>(*this->mLightEvent.mCounter) >> 0x1f) + 1;
}

int CtrJobMan::startCtrThread() {
    int pThreadNumber;

    pThreadNumber = this->mThread.mCurrentThreadNum;
    if (pThreadNumber != 0) {
        pThreadNumber = 1;
    }
    return pThreadNumber;
}

//void CtrJobMan::init(void* pBuffer, int, int){
//}

//void CtrJobMan::enter(){
//}