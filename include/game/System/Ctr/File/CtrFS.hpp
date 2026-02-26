#pragma once

#include "game/types.hpp"


#include "Ctr/File/CtrFEnd.hpp"
#include "Ctr/CtrJobMan.hpp"
#include "Ctr/CtrSave.hpp"
#include "MemAlcBase.hpp"

class CtrFS{
    u8 pad[0x4]; // 0x4
    int * flag1; // 0x8
    CtrFEnd mCtrFEnd; // 0xc  
    u8 pad2[0x4]; // 0x10
    u32 mRomPath; // 0x14
    u8 pad3[0xa]; // 0x18
    ushort flag2; // 0x22
    CtrSaveFormat mCtrSaveFormat; // 0x24
    u8 _pad4_[0x27];
public:
    CtrFS(void);
    virtual ~CtrFS();
    void cancel(void);
    void unmountSaveData(void);
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