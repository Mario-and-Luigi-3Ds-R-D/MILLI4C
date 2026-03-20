#pragma once

#include "types.hpp"

#include "System/Ctr/File/CtrFEnd.hpp"
#include "System/Ctr/CtrJobMan.hpp"
#include "System/Ctr/CtrSave.hpp"
#include "System/Memory/MemAlcBase.hpp"

class CtrFS{
    int flag1; // 0x4
    uint flag2; // 0x8 // *to something
    CtrFEnd mCtrFEnd; // 0xc  
    u8 pad2[0x4]; // 0x14
    u32 mRomPath; // 0x18
    s32 flag3; // 0x1c
    s32 flag4; // 0x20
    ushort usFlag1; // 0x24
    ushort mMounted; // 0x26
    CtrSaveFormat mCtrSaveFormat; // 0x28
    u8 pad[0x10];
public:
    CtrFS(void);
    virtual ~CtrFS();
    void cancel(void);
    void unmountSaveData(void);
    void mountSaveData();
    void initCore(CtrJobMan *,void *, int);
};

class CtrFSEx : public CtrFS{
public: 
    CtrFSEx(void);
    virtual ~CtrFSEx();
    void read(uint,MemAlcBase *,uint,uint,uint,uint);
    void read(uint,void *,uint,uint,uint);
    void read(uint,int,MemAlcBase *,uint,uint,uint);
    void term(void);
};