#include <System/Job.hpp>

void Job::start(){
}

void Job::term(){
}

bool Job::end(int jobId, int end){
    int result = this->getJobId();
    result &= end;
    return result == jobId;
}

JobReturnCode Job::getJobId(){
    return JOB;
}