#include "System/Ctr/File/CtrFRead.hpp"
#include "System/Ctr/File/CtrFS.hpp"

class CtrLoadModule : public CtrFReadBase{
protected:
    short flag8; // 0x26
    CtrFS* mFileSystem; // 0x28
    int flag9; // 0x2c
    int flag10; // 0x30
    int flag11; // 0x34
    int flag12; // 0x38
public:
    CtrLoadModule(void);
    virtual void start();
};

class CtrUnloadModule : public Job{
public:
    CtrUnloadModule();

    virtual void start(); // temp
    virtual int vt_0xc(); // 100%
};

class CtrLoadModuleEx : public CtrLoadModule{
public:
    virtual void term();
};