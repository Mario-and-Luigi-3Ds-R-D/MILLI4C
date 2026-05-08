#include <System/Ctr/CtrJobMan.hpp>
#include <nn/os/os_CriticalSection.h>
#include <nn/os/os_LightEvent.h>
#include <nn/os/CTR/os_ErrorHandler.h>
#include <nn/svc/svc_Api.h>

CtrJobMan::CtrJobMan(){
    this->mJob.mCurrentJob = 0;
    this->mLightEvent.Initialize(1);
    this->mCriticalSection.Initialize();
}

CtrJobMan::~CtrJobMan(){
//  Job* pJob;

//  this->term(pJob)
}

//void CtrJobMan::start(){
//}


/* CtrJobMan::enquene(CTRJOB* pJob) */

void CtrJobMan::enqueue(Job* pJob) {
    this->mCriticalSection.Enter();
    this->JobMan::enqueue(pJob);
    this->mLightEvent.Signal();
    this->mCriticalSection.Leave();
}

/* CtrJobMan::jam(CTRJOB* pJob) */

void CtrJobMan::jam(Job* pJob){
    this->mCriticalSection.Enter();
    this->JobMan::jam(pJob);
    this->mLightEvent.Signal();
    this->mCriticalSection.Leave();
}

/* CtrJobMan::release(CTRJOB* pJob) */

bool CtrJobMan::release(Job* pJob) {
    this->mCriticalSection.Enter();
    this->JobMan::release(pJob);
    this->mCriticalSection.Leave();
}

/* CtrJobMan::release() */

Job* CtrJobMan::release(){
    this->mCriticalSection.Enter();
    this->JobMan::release();
    this->mCriticalSection.Leave();
}

/* CtrJobMan::term() */

void CtrJobMan::term(){
}

/* CtrJobMan::isBusy(CTRJOB* pJob) */

bool CtrJobMan::isBusy(Job* pJob) {
    this->mCriticalSection.Leave();
    this->JobMan::isBusy(pJob);
    this->mCriticalSection.Leave();
}

/* CtrJobMan::end() */

int CtrJobMan::end() {
    int pDone;

    pDone = (int)this->mIsDone;
    return pDone != 0 ? 1 : pDone;
}

/* CtrJobMan::startCounter() */

int CtrJobMan::startCounter(){
    return (static_cast<s32>(*this->mLightEvent.mCounter) >> 0x1f) + 1;
}

/* CtrJobMan::startCtrThread() */

int CtrJobMan::startCtrThread() {
    int pThreadNumber;

    *(nn::Handle*)pThreadNumber = this->mCtrThread.mCurrentThread.mHandle;
    return pThreadNumber != 0 ? 1 : pThreadNumber;
}

/* CtrJobMan::init(void* pBuffer, int size, int priority) */
/* Goes to os::Thread::TryInitializeAndStartImpl, go to CTRSDK-4_2_5/docs/nn/os/Thread.md when added. 
   Used with gMemCtr->allocCore(all the shit in it)
*/

void CtrJobMan::init(void* pBuffer, int size, int priority){
}

void CtrJobMan::enter(){
    Job* pJob;
    // Enter Thread.
    this->mCriticalSection.Enter();

    // TODO: This is a inline no doubt. Create it.
    //
    // If the job is done, proceed.
    if(this->mIsDone == 0){
        this->mLightEvent.ClearSignal();
        this->mCriticalSection.Leave();
        this->mLightEvent.Wait();
    } else{
        this->mCriticalSection.Leave();
    } // If not, fuck off and leave the thread.

    // After what we did above, it is completed. However if its not mJob then...
    pJob = this->mIsDone;
    while(pJob != &this->mJob){
        // Allocate Thread to the current job.
        this->mCriticalSection.Enter();
        pJob = this->mIsDone;
        this->mCriticalSection.Leave();

        // We enter a new CTR Job, proceed.
        pJob->start();
        this->mCriticalSection.Enter();
        this->JobMan::release(pJob);
        this->mCriticalSection.Leave();

        // Same as what we need initially.
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