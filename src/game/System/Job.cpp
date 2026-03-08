#include <System/Job.hpp>

//JobMan::~JobMan(){
//
//}

void JobMan::enqueue(Job* param_2) {
    
    if (this->flag1){
        this->flag2->flag1 = param_2;
    }
    else{
        this->flag1 = param_2;
    }
    param_2->flag1 = 0;
    this->flag2 = param_2;
    return;
}

void JobMan::jam(Job* job){
    job->flag1 = this->flag1;
    this->flag1 = job;
    if(!this->flag2){
        this->flag2 = job;
    }
    return;
}

bool JobMan::isBusy(Job *param_2) {
    Job *JobDone = this->flag1;

    if (JobDone == 0)
        goto endjob;
    goto loop;
loop:
    if (JobDone != param_2)
        goto loop_back;
    return 1;
loop_back:
    JobDone = JobDone->flag1;
    if (JobDone != 0)
        goto loop;
endjob:
    return 0;
}


bool JobMan::FUN_005eda38() {
    return this->flag1 !=0;
}