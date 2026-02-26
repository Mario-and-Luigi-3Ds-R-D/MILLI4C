#pragma once

#include "game/types.hpp"

enum FieldReturnCode : u16{
    CHARACTER_SUB = 2,
    CHARACTER_BASE = 3,
    PLAYER = 5,
    ENEMY = 6,
    BLOCK = 7,
    BOARD = 9,
};

enum FieldTypeReturnCode : u16{
    SYSTEM = 0,
    CELLANIME = 1,
};