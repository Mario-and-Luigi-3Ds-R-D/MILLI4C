#pragma once

#include "types.hpp"
#include "System/Job.hpp"
//nn::fs::IPositionAble

class CtrSaveFile{ // : public nn::fs::FileStream
public:
    int flag2; // 0x4
    int mCloseFile; // 0x8

    virtual ~CtrSaveFile();
    CtrSaveFile();
    void start(int,uint,int,uint); // param_2 sum important
    int mount(); // 100%
};

class CtrSaveFormat : public Job{
public:
    int flag4; // 0x10
    int flag5; // 0x14

    void close(int*, bool);
    virtual uint start(int, int, int);
    virtual int vt_0xc(); // enum
};

class CtrSaveRead : public Job{
public:
    int flag2; // 0x10
    int flag3; // 0x14
    int flag4; // 0x18
    int flag5; // 0x1c
    int flag6; // 0x20

    CtrSaveRead(); // 100%
    virtual void start();
    virtual int vt_0xc(); // 100%
};

class CtrSaveWrite : public Job{
public:
    int flag3; // 0x10
    u8 pad2[4]; // 0x14
    int flag4; // 0x18
    int flag5; // 0x1c
    int flag6; // 0x20

    CtrSaveWrite(); // 100%
    virtual void start(); //lots of params man
    virtual int vt_0xc(); // 100%
};