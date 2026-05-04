#include <System/Ctr/File/CtrFUncompSize.hpp>

void CtrFUncompSize::start(){
    // TODO
}

void CtrFUncompSize::term(){
    this->mLightEvent.Signal();
}

JobReturnCode CtrFUncompSize::getJobId(){
    return FUNCOMP_SIZE;
}