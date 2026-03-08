//fieldenemy fieldenemyCA
#pragma once

#include "FieldChr.hpp"
#include "FReturnCode.hpp"
#include "game/types.hpp"

class FieldEnemy : public FieldChr{
public:
    virtual ~FieldEnemy();

    FieldEnemy(void);
    FieldReturnCode getReturnCode();
};
static_assert(sizeof(FieldEnemy) == 0x5b0, "Oh noes! BAD!");

class FieldEnemyCA : public FieldEnemy, FieldCAChrBase{
public:
    virtual ~FieldEnemyCA();

    FieldEnemyCA(void);
    FieldTypeReturnCode getSubReturnCode();
};
//static_assert(sizeof() == 0x, "Oh noes! BAD!");