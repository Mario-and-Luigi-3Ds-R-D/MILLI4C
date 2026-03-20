#include <System/Job.hpp>

void JobMan::jam(Job* job){
    job->flag0 = this->mIsDone;
    this->mIsDone = job;
    if(!this->flag2){
        this->flag2 = job;
    }
    return;
}

bool JobMan::release(Job* job)
{
    Job* param_2 = mIsDone;
    if (param_2 == job) {
        ((void (*)(JobMan*))(*(void***)this)[3])(this);
        return true;
    }
    if (!param_2)
        return false;
    do {
        Job* next = param_2->flag0;
        if (next == job) {
            Job* nextNext = job->flag0;
            param_2->flag0 = nextNext;
            if (nextNext == 0)
                flag2 = param_2;
            ((void (*)(Job*))(*(void***)job)[1])(job);
            return true;
        }
        param_2 = next;
    } while (param_2);
    return false;
}

Job* JobMan::releaseDone(Job* param_2) {
    Job* param_3;
    
    param_2 = this->mIsDone;
    param_3 = param_2->flag0;
    this->mIsDone = param_3;

    if(param_3 == 0){
        param_3 = this->mIsDone;
        param_3 = 0;
        this->flag2 = 0;
    }
    else{
        this->mIsDone = param_3;
    }
    return ((Job* (*)(Job*))(*(void***)param_2)[1])(param_2);
}

void JobMan::term(Job* param_2) {
    if(this->mIsDone == 0)
        return;
    do
    {
        ((void (*)(JobMan*))(*(void***)this)[3])(this);
    }
    while (mIsDone != 0);
}

// DRATS! My Hack is gone, oh well...

bool JobMan::isBusy(Job *param_2)
{
    Job *JobDone = this->mIsDone;

    if (JobDone != NULL) {
        do {
            if (JobDone == param_2) {
                return 1;
            }
            JobDone = JobDone->flag0;
        } while (JobDone != 0);
    }

    return 0;
}

bool JobMan::FUN_005eda38() {
    return this->mIsDone !=0;
}

void JobMan::enqueue(Job* param_2) {
    
    if (this->mIsDone){
        this->flag2->flag0 = param_2;
    }
    else{
        this->mIsDone = param_2;
    }
    param_2->flag0 = 0;
    this->flag2 = param_2;
    return;
}

//  ((void (*)(JobMan*))(*(void***)this)[3])(this); 
//
// It looks ugly but.. it works so I'm keeping this around for now until solution.

JobMan::~JobMan() {
    JobMan* self = this;
    if (self->mIsDone != 0)
    {
        do {
            ((void (*)(JobMan*))(*(void***)this)[3])(this);
        } while (self->mIsDone != 0);
    }
}

// Was gonna hack this one, but I used IDA no stinky hacks here, folks!

void JobMan::cancel(Job* param_2, Job* param_3) {
    Job* param_4 = param_2->flag0;
    
    if(param_3){
        param_3->flag0 = param_4;
        if(!param_4)
            this->flag2 = param_3;
    }
    else{
        this->mIsDone = param_4;
        if(!param_4)
            this->flag2 = 0;
    }
    param_2->term();
}