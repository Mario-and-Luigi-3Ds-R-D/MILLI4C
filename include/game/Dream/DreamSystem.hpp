#pragma once

#include "types.hpp"
#include "FieldSystem.hpp"
#include "FieldBootInfo.hpp"

class DreamSystem : public FieldSystem{
public:
    virtual ~DreamSystem();

    DreamSystem(FieldBootInfo const);
};