#include <System/Job.hpp>

/* Use the CtrJobMan entry, not this. */

void JobMan::jam(Job* pJob){
    pJob->mCurrentJob = this->mIsDone;
    this->mIsDone = pJob;
    if(!this->mJammedJob){
        this->mJammedJob = pJob;
    }
}

bool JobMan::release(Job* pJob){
    Job* cur = mIsDone;
    if (cur == pJob) {
        this->release();
        return true;
    }
    if (!cur)
        return false;
    do {
        Job* next = cur->mCurrentJob;
        if (next == pJob) {
            Job* nextNext = pJob->mCurrentJob;
            cur->mCurrentJob = nextNext;
            if (nextNext == 0)
                mJammedJob = cur;
            pJob->term();
            return true;
        }
        cur = next;
    } while (cur);
    return false;
}

void JobMan::release() {
    Job* current = this->mIsDone;
    Job* next = current->mCurrentJob;
    
    this->mIsDone = next;
    if(next == 0)
        this->mJammedJob = 0;
    
    current->term();
}

void JobMan::term() {
    if(this->mIsDone == 0)
        return;

    do{
        this->release();
    } while (mIsDone != 0);
}

bool JobMan::isBusy(Job *pJob){
    Job *currentJobStatus = this->mIsDone;

    if (currentJobStatus != NULL) {
        do {
            if (currentJobStatus == pJob) {
                return true;
            }
            currentJobStatus = currentJobStatus->mCurrentJob;
        } while (currentJobStatus != 0);
    }
    return false;
}

bool JobMan::isDone() {
    return this->mIsDone != 0;
}

void JobMan::enqueue(Job* pJob) {
    if (this->mIsDone){
        this->mJammedJob->mCurrentJob = pJob;
    }
    else{
        this->mIsDone = pJob;
    }
    pJob->mCurrentJob = 0;
    this->mJammedJob = pJob;
}

JobMan::~JobMan() {
    JobMan* currentJob = this;
    if (currentJob->mIsDone != 0){
        do {
            currentJob->release();
        } while (currentJob->mIsDone != 0);
    }
}

void JobMan::cancel(Job* pJammedJob, Job* pJob) {
    Job* jammed = pJammedJob->mCurrentJob;
    
    if(pJob){
        pJob->mCurrentJob = jammed;
        if(!jammed)
            this->mJammedJob = pJob;
    }
    else{
        this->mIsDone = jammed;
        if(!jammed)
            this->mJammedJob = 0;
    }
    pJammedJob->term();
}