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

class FieldEnemyCA : public FieldEnemy, FieldCAChrBase{
public:
    virtual ~FieldEnemyCA();

    FieldEnemyCA(void);
    FieldTypeReturnCode getSubReturnCode();
};