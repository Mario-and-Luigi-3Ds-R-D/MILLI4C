#pragma once

#include "types.hpp"
//nn hid

class CtrTp{
public: 
    CtrTp(void);
    void getTouchReader();
};

class CtrBtn{
public:
    void get(int);
    void getPadReader(); //bisdx ref
};

class CtrAcl{
public:
    void getAcelReader();
};