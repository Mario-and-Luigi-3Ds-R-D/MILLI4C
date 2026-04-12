#pragma once

#include "types.hpp"
#include "System/Ctr/File/CtrFEnd.hpp"
#include "System/Ctr/CtrJobMan.hpp"
#include "System/Ctr/CtrSave.hpp"
#include "System/Memory/MemAlcBase.hpp"

class CtrFS{
public:

    struct MountedStatus{
        ushort usFlag1;
        ushort mMounted;  
    };

    int* flag1; // 0x4
    CtrJobMan* mJobMan; // 0x8
    CtrFEnd mCtrFEnd; // 0xc
    const char* mRomPath; // 0x18
    void* mCoreStatus; // 0x1c
    s32 mCoreNumber; // 0x20
    CtrFS::MountedStatus mFSMountStatus; // 0x24
    CtrSaveFormat mCtrSaveFormat; // 0x28
    int flag2; // 0x40
    int flag3; // 0x44
    int flag4; // 0x48

    CtrFS(void); // 78%
    virtual ~CtrFS(); 
    void cancel(void);
    int unmountSaveData(void); // 100%
    void mountSaveData(); // 93%
    void initCore(CtrJobMan*, void*, int); // 100%
};

class CtrFSEx : public CtrFS{
public: 
    CtrFSEx(void);
    virtual ~CtrFSEx();
    int read(uint,MemAlcBase *,uint,uint,uint,uint); // 0x00532600, 68%
    void* read(uint,void *,uint,uint,uint); // 0x005326dc
    void read(uint,int,MemAlcBase *,uint,uint,uint); // 0x00532794 
    int read(uint,uint,uint,uint,uint); // 0x00532898
    void term(void);
};