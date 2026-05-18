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
    this->term();
    this->mCriticalSection.Finalize();
}

//void CtrJobMan::start(MemAlcBase* pAlcBase, size_t size,  ){
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

void CtrJobMan::release(){
    this->mCriticalSection.Enter();
    this->JobMan::release();
    this->mCriticalSection.Leave();
}

/* CtrJobMan::term() */

void CtrJobMan::term() {
    if(this->startCtrThread() != 0){
        this->jam(&this->mJob);
        {int index;
        nn::Handle handle = this->mCtrThread.mHandle;
        Result result = nn::svc::WaitSynchronizationN(&index,&handle, 1, false, -1);
        NN_OS_ERROR_IF_FAILED(result);
        this->mCtrThread.mCanFinalize = true;
        this->mCtrThread.FinalizeImpl();
        this->mCtrThread.Close();}
        this->JobMan::term();
        this->mCtrThread.freeThread();
    }
}

/* CtrJobMan::isBusy(CTRJOB* pJob) */

bool CtrJobMan::isBusy(Job* pJob) {
    this->mCriticalSection.Enter();
    this->JobMan::isBusy(pJob);
    this->mCriticalSection.Leave();
}

/* CtrJobMan::isDone() */

bool CtrJobMan::isDone() {
    return this->mIsDone != 0;
}

/* CtrJobMan::signalValue() */

s32 CtrJobMan::signalValue(){
    return (static_cast<s32>(*this->mLightEvent.mLock.mCounter) >> 0x1f) + 1;
}

/* CtrJobMan::startCtrThread() */

int CtrJobMan::startCtrThread() {
    return this->mCtrThread.mHandle != 0;
}

/* enterJob(CtrJobMan pThis) */
//
/* Used in the thread funcs start & init. */

void enterJob(CtrJobMan* pThis){
    Job* pJob;
    // Enter Thread.
    pThis->mCriticalSection.Enter();
    // TODO: Make this Shit Into an inline.
    // If the job is done, proceed.
    if(pThis->mIsDone == 0){
        pThis->mLightEvent.ClearSignal();
        pThis->mCriticalSection.Leave();
        pThis->mLightEvent.Wait();
    } else{
        pThis->mCriticalSection.Leave();
    } // If not, fuck off and leave the thread.

    // After what we did above, it is completed. However if its not mJob then...
    pJob = pThis->mIsDone;
    while(pJob != &pThis->mJob){
        // Allocate Thread to the current job.
        pThis->mCriticalSection.Enter();
        pJob = pThis->mIsDone;
        pThis->mCriticalSection.Leave();

        // We enter a new CTR job, proceed.
        pJob->start();
        pThis->mCriticalSection.Enter();
        pThis->JobMan::release(pJob);
        pThis->mCriticalSection.Leave();

        // Same as what we need initially.
        pThis->mCriticalSection.Enter();
        if(pThis->mIsDone == 0){
            pThis->mLightEvent.ClearSignal();
            pThis->mCriticalSection.Leave();
            pThis->mLightEvent.Wait();
        } else{
            pThis->mCriticalSection.Leave();
        }
        pJob = pThis->mIsDone;
    }
    return;
}

/* CtrJobMan::init(void* pBuffer, int size, int priority) */
/* Goes to os::Thread::TryInitializeAndStartImpl, go to CTRSDK-4_2_5/docs/nn/os/Thread.md when added. 
   Used with gMemCtr->allocCore(all the shit in it)
*/

//void CtrJobMan::init(void* src, int size, int priority){
//    *this->mLightEvent.mCounter.mValue = src + priority;
//    this->mCtrThread.mCurrentThread.StartUsingAutoStack(enterJob, this, nullptr, size, priority);
//}