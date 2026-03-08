#pragma once

#include "game/types.hpp"
#include "Ctr/File/CtrFS.hpp"
#include "TaskMainBase.hpp"

class Boot : public TaskMainBase{
    int flag1; // 0xc
public:
    virtual ~Boot();

    Boot(void); //void status unknown
    void initMessage(); //unk
    int StartBoot(); // Return could be Boot*
    void startCtr(); //holy GUAC theres a lot
    void term(); //unk
};