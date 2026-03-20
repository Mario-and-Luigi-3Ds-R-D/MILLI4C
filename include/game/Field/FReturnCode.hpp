#pragma once

#include "game/types.hpp"

enum FClassReturnCode{
    FPC_MARIO = 0, // could be here
    FPC_LUIGI = 1, // could be here
    /*CHARACTER_SUB = 2,
    //CHARACTER_BASE = 3, */
    PRIM = 4,
    PLAYER = 5,
    ENEMY = 6,
    BLOCK = 7,
    MIRACLE = 8,
    BOARD = 9,
};

enum FClassTypeReturnCode{
    SYSTEM = 0,
    CELLANIME = 1,
};