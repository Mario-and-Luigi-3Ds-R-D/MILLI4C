#include <System/Job.hpp>

extern void operator delete(void*);

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