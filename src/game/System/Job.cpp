#include <System/Job.hpp>

/* Job */

/* The Main Job Partent */

void Job::start(){
}

void Job::term(){
}

/* Job::get(int jobId, uint mask) */

/* Puts in a JobID, and masks it. */

bool Job::get(int jobId, uint mask){
    int result = this->getJobId();
    result &= mask;
    return result == jobId;
}

JobReturnCode Job::getJobId(){
    return JOB;
}