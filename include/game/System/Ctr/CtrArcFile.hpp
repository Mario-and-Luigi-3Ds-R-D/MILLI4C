#pragma once

#include "types.hpp"
#include "System/Ctr/File/CtrFRead.hpp"
#include "System/Ctr/File/CtrFileBase.hpp"

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