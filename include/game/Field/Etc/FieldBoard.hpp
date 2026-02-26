//fieldboard fieldbordCA fieldboardmdl
#pragma once

#include "FieldObj.hpp"
#include "FieldChr.hpp"
#include "game/types.hpp"

class FieldBoard : public FieldChr, FieldObjBase{ //import after FieldChr at 0xe0
public:
    virtual ~FieldBoard();

    FieldBoard(void);
};