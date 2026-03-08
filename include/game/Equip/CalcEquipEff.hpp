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
static_assert(sizeof(CalcEquipEff) == 0xf, "Oh noes! BAD!"); //0xf if vtable. 0x6 if  not
