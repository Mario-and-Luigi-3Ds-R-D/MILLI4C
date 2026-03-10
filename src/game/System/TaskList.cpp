#include <System/TaskList.hpp>

TaskList::~TaskList(void) {
    startList();
}

bool TaskList::vt_0x4(){
    return 0;
}

void TaskList::finish(){
    ((void (*)(TaskList*))(*(void***)this)[3])(this);
}

void TaskList::startList()
{
    if (!mListFinished)
        return;
    if (mListNum)
        mListNum->mListFinished = mListFinished;
    mListFinished->mListNum = mListNum;
    mListFinished = 0;
}