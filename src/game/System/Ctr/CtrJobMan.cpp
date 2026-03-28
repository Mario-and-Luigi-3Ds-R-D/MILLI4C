#include <System/Ctr/CtrJobMan.hpp>
#include <nn/os/os_CriticalSection.h>
#include <nn/os/os_LightEvent.h>

// Start Nonmatching

CtrJobMan::CtrJobMan(){
}

//CtrJobMan::~CtrJobMan(){
//}

//void CtrJobMan::start(){
//}

// End Nonmatch, start finished

void CtrJobMan::enqueue(Job* pJob) {
    this->mCriticalSection.Enter();
    ((JobMan*)this)->JobMan::enqueue(pJob);
    this->mLightEvent.Signal();
    this->mCriticalSection.Leave();
}

void CtrJobMan::jam(Job* pJob){
    this->mCriticalSection.Enter();
    ((JobMan*)this)->JobMan::jam(pJob);
    this->mLightEvent.Signal();
    this->mCriticalSection.Leave();
}

bool CtrJobMan::release(Job* pJob) {
    bool pIsDone;

    this->mCriticalSection.Enter();
    pIsDone = ((JobMan*)this)->JobMan::isBusy(pJob);
    this->mCriticalSection.Leave();
    return pIsDone;
}

// 75%
Job* CtrJobMan::releaseDone(Job* pJob){
}

// Not finished/started
void CtrJobMan::term(){
}

bool CtrJobMan::isBusy(Job* pJob) {
    bool pIsBusy;

    this->mCriticalSection.Leave();
    pIsBusy = ((JobMan*)this)->JobMan::isBusy(pJob);
    this->mCriticalSection.Leave();
    return pIsBusy;
}

int CtrJobMan::vt_0x14() {
    int param_1;

    param_1 = (int)this->mIsDone;
    if (param_1 != 0) {
        param_1 = 1;
    }
    return param_1;
}

int CtrJobMan::startLightEvent(){
    return ((int)this->mLightEvent.mCounter.mValue.mValueType >> 0x1f) + 1;
}

int CtrJobMan::startCtrThread() {
    int pThread;

    pThread = this->mThread.mCurrentThreadNum;
    if (pThread != 0) {
        pThread = 1;
    }
    return pThread;
}

//void CtrJobMan::init(){
//}