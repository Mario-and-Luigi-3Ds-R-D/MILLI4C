#pragma once

#include "system/Ctr/file/CtrFileBase.hpp"
#include "system/Ctr/file/CtrFRead.hpp"

namespace BtlFS{
    class FileUnit : public CtrFileBase{
    virtual ~FileUnit();

    FileUnit();
};
    class FReadUnit : public CtrFReadBase{
    FReadUnit();
};
};