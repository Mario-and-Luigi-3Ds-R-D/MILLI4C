#pragma once

#include "types.hpp"
#include "Message/MessageSys.hpp"
#include "System/Ctr/CtrJobMan.hpp"
#include "System/Ctr/File/CtrFS.hpp"
#include "System/Task.hpp"

class Boot : public TaskMainBase{
    int flag1; // 0xc
public:
    virtual void LoadSave();
    virtual ~Boot();

    Boot(void);
    void initMessage();
    int startApplication(); // Return could be Boot*
    void startCtr(); //holy GUAC theres a lot
    void term(); //unk
    bool beginState();
    void entry();
};