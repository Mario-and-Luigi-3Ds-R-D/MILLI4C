#pragma once

#include "types.hpp"
#include "System/Ctr/File/CtrFRead.hpp"
#include "System/Ctr/File/CtrFileBase.hpp"
#include "System/BinGlu3AcsIdxHdr.hpp"

class CtrArcFile : public CtrFileBase{
public:
    virtual ~CtrArcFile();
    virtual void getBinHdr(int*) = 0;
    virtual void getOfs(int,uint*,uchar*) = 0;

    CtrArcFile();
    void open(wchar_t const*,void const*);
    void cancel(int);
    void isBusy(uint);
    size_t getSize(const void*);
    void readCore(CtrFRead *, int,uint,uint);
    int uncomp(int);
    void read(CtrFRead*, char*, uint, void*, uint);
};