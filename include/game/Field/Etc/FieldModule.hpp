#pragma once

#include "game/types.hpp"
#include "Ctr/File/CtrFileBase.hpp"

class FieldModule : public CtrFileBase{
};
static_assert(sizeof(FieldModule) == 0x48, "Oh noes! BAD!");