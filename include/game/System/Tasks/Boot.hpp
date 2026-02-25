#pragma once

#include "game/types.hpp"
#include "Ctr/File/CtrFS.hpp"

class Boot{
//ctrfs at 0x4 here and others defined in Boot:~Boot
public:
    virtual ~Boot();

    Boot(void); //void status unknown
    void initMessage(); //unk
    int StartBoot(); //unk
    void startCtr(); //holy GUAC theres a lot
    void term(); //unk
    void Update(); //void status unknown
};