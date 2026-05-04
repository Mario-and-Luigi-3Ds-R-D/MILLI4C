#pragma once

#include "types.hpp"
#include "Message/MessageSys.hpp"
#include "System/Ctr/CtrJobMan.hpp"
#include "System/Ctr/File/CtrFS.hpp"
#include "System/Task.hpp"

class Boot : public TaskMainBase{
protected:
    int flag1; // 0xc
    CtrFSEx mCtrFSExLoader;
public:
    virtual void update();
    virtual ~Boot();

    Boot(void);
    static void initalizeMemory(uint,uint,uint);
    static void initialize(); // 100%
    void startMessageSys();
    void entry(); // 100%
};