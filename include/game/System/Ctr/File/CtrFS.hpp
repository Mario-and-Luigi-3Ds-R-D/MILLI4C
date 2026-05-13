#pragma once

#include "types.hpp"
#include "System/Ctr/File/CtrFEnd.hpp"
#include "System/Ctr/CtrJobMan.hpp"
#include "System/Ctr/CtrSave.hpp"
//#include "System/Ctr/File/CtrFileTmp.hpp"
//#include "System/Backup.hpp"
#include "System/Memory/MemAlcBase.hpp"

class CtrFS{
public:
    int* flag1; // 0x4
    CtrJobMan* mJobMan; // 0x8
    CtrFEnd mCtrFEnd; // 0xc
    const char* mRomPath; // 0x18
    void* mCoreSource; // 0x1c
    s32 mCoreSize; // 0x20
//    Backup::errCode* mpErrorCode;
    CtrSaveFormat mCtrSaveFormat; // 0x28

    CtrFS(void); // 78%
    virtual ~CtrFS(); 
    void cancel(void);
    static Result unmountSaveData(void); // 100%
    static void mountSaveData(); // 93%
    void initCore(CtrJobMan*, void*, int); // 100%
};

class CtrFSEx : public CtrFS{
public:
//    CtrFileTmp<CtrFSEx>* mFileTmp; // 0x40
    void* flag3; // 0x44
    Job* mFileJob; // 0x48
public: 
    virtual ~CtrFSEx(){ this->term(); }
    int read(uint,MemAlcBase *,uint,uint,uint,uint); // 0x00532600
    void* read(uint,void *,uint,uint,uint); // 0x005326dc
    void read(uint,int,MemAlcBase *,uint,uint,uint); // 0x00532794 
    int read(uint,uint,uint,uint,uint); // 0x00532898
    void term(void);
};

