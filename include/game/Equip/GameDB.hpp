#pragma once

#include "types.hpp"

class GameDB{
    enum ItemMsgType{
        TYPE1,
        TYPE2,
        TYPE3
    };
public: 
    GameDB();
    void GetItemMsg(ushort, GameDB::ItemMsgType);
    void GetUseItem(ushort);
    void GetItemData(ushort);
    void GetPcAtkData(ushort);
    void GetBadgeEffect(ushort);
    int GetBadgeEffectId();
    void GetBadgeIdList(uchar);
    void GetBadgeIdList(void);
    uint GetBadgeIdPair(ushort);
    void GetEquipIdList(void);
    void GetItemMsgCore(ushort);
    void GetPcAtkExpMsg(ushort,uchar,uchar);
    void GetBadgeEffectId(ushort,ushort);
    void GetBrosAtkIdList(void);
    void GetUseItemIdList(void);
    void GetBadgeEffExpMsg(ushort);
    void GetRankUpBonusName(ushort);
    void GetMiracleAtkIdList(void);
    void GetRankUpBonusExpMsg(ushort);
    void GetExpertChallengeMsgData(ushort);
    void GetExpertChallengeMsgFile(void);
    void GetBadge(ushort);
    void GetEquip(ushort);

    static void openMsg();
};