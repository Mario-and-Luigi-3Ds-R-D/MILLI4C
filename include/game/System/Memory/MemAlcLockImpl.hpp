#pragma once

#include "game/types.hpp"
#include "MemAlc.hpp"

template <typename MemAlcH>
class MemAlcLockImpl : public MemAlc{
public:
    MemAlcLockImpl();
    void free(int);
    int* allocCore(int, uint);
};
