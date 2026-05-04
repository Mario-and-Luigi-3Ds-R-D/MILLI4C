#include <System/Job.hpp>

void JobMan::jam(Job* job){
    job->mCurrentJob = this->mIsDone;
    this->mIsDone = job;
    if(!this->mJammedJob){
        this->mJammedJob = job;
    }
    return;
}

bool JobMan::release(Job* job)
{
    Job* cur = mIsDone;
    if (cur == job) {
        this->release();
        return true;
    }
    if (!cur)
        return false;
    do {
        Job* next = cur->mCurrentJob;
        if (next == job) {
            Job* nextNext = job->mCurrentJob;
            cur->mCurrentJob = nextNext;
            if (nextNext == 0)
                mJammedJob = cur;
            job->term();
            return true;
        }
        cur = next;
    } while (cur);
    return false;
}

Job* JobMan::release() {
    Job* param_2;
    Job* param_3;
    
    param_2 = this->mIsDone;
    param_3 = param_2->mCurrentJob;
    this->mIsDone = param_3;

    if(param_3 == 0){
        param_3 = this->mIsDone;
        param_3 = 0;
        this->mJammedJob = 0;
    }
    else{
        this->mIsDone = param_3;
    }
    return ((Job* (*)(Job*))(*(void***)param_2)[1])(param_2);
}

void JobMan::term() {
    if(this->mIsDone == 0)
        return;
    do{
        this->release();
    }
    while (mIsDone != 0);
}

// DRATS! My Hack is gone, oh well...

bool JobMan::isBusy(Job *param_2)
{
    Job *currentJobStatus = this->mIsDone;

    if (currentJobStatus != NULL) {
        do {
            if (currentJobStatus == param_2) {
                return 1;
            }
            currentJobStatus = currentJobStatus->mCurrentJob;
        } while (currentJobStatus != 0);
    }

    return 0;
}

int JobMan::end() {
    return this->mIsDone !=0;
}

void JobMan::enqueue(Job* param_2) {
    
    if (this->mIsDone){
        this->mJammedJob->mCurrentJob = param_2;
    }
    else{
        this->mIsDone = param_2;
    }
    param_2->mCurrentJob = 0;
    this->mJammedJob = param_2;
    return;
}

JobMan::~JobMan() {
    JobMan* currentJob = this;
    if (currentJob->mIsDone != 0)
    {
        do {
            currentJob->release();
        } while (currentJob->mIsDone != 0);
    }
}

void JobMan::cancel(Job* current, Job* oldJob) {
    Job* jammed = current->mCurrentJob;
    
    if(oldJob){
        oldJob->mCurrentJob = jammed;
        if(!jammed)
            this->mJammedJob = oldJob;
    }
    else{
        this->mIsDone = jammed;
        if(!jammed)
            this->mJammedJob = 0;
    }
    current->term();
}