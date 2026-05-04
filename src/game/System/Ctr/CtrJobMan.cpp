#include <System/Ctr/CtrJobMan.hpp>
#include <nn/os/os_CriticalSection.h>
#include <nn/os/os_LightEvent.h>
#include <nn/os/CTR/os_ErrorHandler.h>
#include <nn/svc/svc_Api.h>

CtrJobMan::CtrJobMan(){
/*    this->mIsDone = 0;
    this->mJammedJob = 0;
    this->mCtrThread.mCurrentThreadNum = 0;
    this->mCtrThread.mIsActiveThread = true;
    this->mCtrThread.mThread = *(nn::os::Thread*)0;
    this->mLightEvent.mCounter.mValue = 0;
    this->mLightEvent.mLock.mCounter.mValue = 0;
    this->mCriticalSection.mThreadUniqueValue = 0;
    this->mCriticalSection.mLockCount = -1;
    this->mJob.mCurrentJob = 0;
    this->mLightEvent.Initialize(1);
    this->mCriticalSection.Initialize();*/
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

void CtrJobMan::term(){
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

    *(nn::Handle*)pThreadNumber = this->mCtrThread.mCurrentThread.mHandle;
    if (pThreadNumber != 0) {
        pThreadNumber = 1;
    }
    return pThreadNumber;
}

void CtrJobMan::init(void* pBuffer, int size, int priority){
}

CtrJobMan::~CtrJobMan(){

}

void CtrJobMan::enter(){
    Job* pJob;

    this->mCriticalSection.Enter();
    if(this->mIsDone == 0){
        this->mLightEvent.ClearSignal();
        this->mCriticalSection.Leave();
        this->mLightEvent.Wait();
    } else{
        this->mCriticalSection.Leave();
    }
    pJob = this->mIsDone;
    while(pJob != &this->mJob){
        this->mCriticalSection.Enter();
        pJob = this->mIsDone;
        this->mCriticalSection.Leave();
        pJob->start();
        this->mCriticalSection.Enter();
        this->JobMan::release(pJob);
        this->mCriticalSection.Leave();
        this->mCriticalSection.Enter();
        if(this->mIsDone == 0){
            this->mLightEvent.ClearSignal();
            this->mCriticalSection.Leave();
            this->mLightEvent.Wait();
        } else{
            this->mCriticalSection.Leave();
        }
        pJob = this->mIsDone;
    }
    return;
}