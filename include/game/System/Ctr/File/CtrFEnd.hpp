#pragma once

#include "types.hpp"
#include "System/Job.hpp"

class CtrFEnd : public Job{
public:
    virtual void term();
};