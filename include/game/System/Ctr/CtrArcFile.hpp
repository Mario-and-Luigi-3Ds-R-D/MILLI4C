#pragma once

#include "game/types.hpp"
#include "system/Ctr/File/CtrFRead.hpp"
#include "system/Ctr/File/CtrFileBase.hpp"

class CtrArcFile : public CtrFileBase{
public:
    virtual ~CtrArcFile();

    CtrArcFile();
    void open(wchar_t const*,void const*);
    void cancel(int);
    void isBusy(uint);
    void getSize(uint);
    void readCore(CtrFRead *, int,uint,uint);
};