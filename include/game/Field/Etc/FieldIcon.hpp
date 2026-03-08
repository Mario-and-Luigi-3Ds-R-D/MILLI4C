// fieldicon  and fieldactionicon
#pragma once

#include "FieldSrtBase.hpp"
#include "FieldCA.hpp"
#include "System/MoveBase.hpp"
#include "types.hpp"

class FieldIcon : public FieldCA{
public:
    virtual ~FieldIcon();

    FieldIcon(void);
};
static_assert(sizeof(FieldIcon) == 0x, "Oh noes! BAD!");

class FieldActionIcon{
};
//static_assert(sizeof() == 0x, "Oh noes! BAD!");