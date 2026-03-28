#pragma once

#include "types.hpp"
//nn hid

class CtrTp{
    ushort flag0; // 0x0
    ushort flag1; // 0x2
    ushort flag2; // 0x4
    ushort flag3; // 0x6
    char flag4; // 0x8
    char flag5; // 0x9
    char flag6; // 0xa
    char flag7; // 0xb
    ushort flag8; // 0xc
    ushort flag9; // 0xe
    char flag10; // 0x10
public:
    CtrTp(void); // 75%
    void read();
};

class CtrBtn{

    struct InputTable{
    };

    int mLastFrameInput;
    int mLastLastFrameInput;
    int mNewInput;
    int mCurrentInput;
    CtrBtn::InputTable mInputTable;
    int mNewCurrentInput;
public:
    void get(int);
    void read(); //bisdx ref
};

class CtrAcl{
public:
    void read();
};