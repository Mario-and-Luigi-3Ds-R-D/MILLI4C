#pragma once

#include "Ctr/File/CtrFS.hpp"
#include "game/types.hpp"

class FieldFS : public CtrFS{
public:
    virtual ~FieldFS();

    FieldFS(void);
    uint open(uint,uint);
};