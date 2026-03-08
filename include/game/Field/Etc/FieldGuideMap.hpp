//fieldguidemap fieldguidemapbutton
#pragma once

#include "FieldCA.hpp"
#include "FieldSrtBase.hpp"
#include "game/types.hpp"

class FieldGuideMap{
};

class FieldGuideMapButton : public FieldSrtBase{
public:
    virtual ~FieldGuideMapButton();

    FieldGuideMapButton(void);
};
static_assert(sizeof(FieldGuideMapButton) == 0x173, "Oh noes! BAD!");