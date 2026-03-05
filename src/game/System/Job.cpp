#include <System/Job.hpp>

//JobMan::JobMan(){
//
//}

void JobMan::FUN_0050f398(Job* param_2) {
    
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

bool JobMan::FUN_005eda38() {
    return this->flag1 !=0;
}