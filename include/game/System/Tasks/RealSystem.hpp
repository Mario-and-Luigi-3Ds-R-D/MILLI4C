#pragma once

#include "types.hpp"
#include "Field/FieldSystem.hpp" //Base
#include "Boot/FieldBootInfo.hpp"

class RealSystem : public FieldSystem {
public:
    virtual ~RealSystem();

    RealSystem(FieldBootInfo const*);
    void getPath();
};