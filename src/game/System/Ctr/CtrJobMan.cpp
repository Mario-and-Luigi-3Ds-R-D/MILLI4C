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
    nn::os::CriticalSection::Enter((int)&this->mCriticalSection);
    ((JobMan*)this)->JobMan::enqueue(pJob);
    nn::os::LightEvent::Signal((int)&this->flag4);
    nn::os::CriticalSection::Leave((int)&this->mCriticalSection);
}

void CtrJobMan::jam(Job* pJob){
    nn::os::CriticalSection::Enter((int)&this->mCriticalSection);
    ((JobMan*)this)->JobMan::jam(pJob);
    nn::os::LightEvent::Signal((int)&this->flag4);
    nn::os::CriticalSection::Leave((int)&this->mCriticalSection);
}

bool CtrJobMan::release(Job* pJob) {
    bool pIsDone;

    nn::os::CriticalSection::Enter((int)&this->mCriticalSection);
    pIsDone = ((JobMan*)this)->JobMan::isBusy(pJob);
    nn::os::CriticalSection::Leave((int)&this->mCriticalSection);
    return pIsDone;
}

// 75%
void CtrJobMan::releaseDone(Job* pJob){
}

// Not finished/started
void CtrJobMan::term(){
}

bool CtrJobMan::isBusy(Job* pJob) {
    bool pIsBusy;

    nn::os::CriticalSection::Enter((int)&this->mCriticalSection);
    pIsBusy = ((JobMan*)this)->JobMan::isBusy(pJob);
    nn::os::CriticalSection::Leave((int)&this->mCriticalSection);
    return pIsBusy;
}

int CtrJobMan::vt_0x14(){
}

int CtrJobMan::startLightEvent(){
    return ((int)this->flag4 >> 0x1f) + 1;
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