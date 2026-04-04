#pragma once

#include "types.hpp"
#include "System/Memory/MemAlc.hpp"

template <typename MemAlcH>
class MemAlcLockImpl : public MemAlcH{
public:
    MemAlcLockImpl();
    virtual void free(uint flags);
    virtual MemAlcBase* allocCore(uint, uint);
};
