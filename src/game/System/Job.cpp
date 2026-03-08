#include <System/Job.hpp>

extern void operator delete(void*);

void Job::FUN_00485d2c(){
    return;
}

void Job::FUN_00485d30(){
    return;
}

bool Job::FUN_005e361c(){
    return false;
}

bool Job::end(int isEnd, int end)
{
    int result = ((int (*)(Job*))(*(void***)this)[2])(this);
    result &= end;
    return result == isEnd;
}