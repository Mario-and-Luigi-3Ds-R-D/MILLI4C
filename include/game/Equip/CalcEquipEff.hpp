#pragma once

#include "game/types.hpp"

#include "DataPc.hpp"

class CalcEquipEff{
//  virtual ~CalcEquipEff()?

    CalcEquipEff(uint);
    void setCoin(uint);
    void getWeaponPow(DataPc const&,EquipMentSlotType); //could be an enum from here
    void getDef(DataPc const&);
    void getDefUp(DataPc const&);
};
