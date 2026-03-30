#include <System/Job.hpp>

void Job::start(){
    return;
}

void Job::term(){
    return;
}

int Job::vt_0xc(){
    return 0;
}

bool Job::end(int isEnd, int end)
{
    int result = ((int (*)(Job*))(*(void***)this)[2])(this);
    result &= end;
    return result == isEnd;
}