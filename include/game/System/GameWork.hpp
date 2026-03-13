#pragma once

#include "Equip/DataPc.hpp"
#include "types.hpp"

class GameWork{
    
public:
    void initGameWork(void);
    void initializeRO(); //param_2, and param_3
    void finalizeRO();
    void updatePlayTime(void);
    void startPlayTime(void);
    void UpdatePcStatus(DataPc* status); //not a this call
    int addItem(ushort,char);
    void equipBadge(uchar,ushort);
    int addPcStatus(uchar,PcStatusType,DataPc::ParamAddType,int,bool);
    void getPlayTime(short *,short *,short *,short *);
    void onNewPuzzle(uchar);
    int ApplyPerCent(int,int);
    uchar getRealAreaNo(uchar); // 0x005F0FD0
    void onNewColosseum(uchar);
    void putBadgeBitFlag(ushort);
    int existKoopaCastle(void);
    void onClearColosseum(uchar);
    void onPlayablePuzzle(uchar);
    void putPuzzleClearTime(uchar,uint);
    void putMenuEquipBitFlag(uint,bool);
    void putColosseumBestTurn(uchar,uchar);
    int addCoin(int);
    void equipItem(uchar,ushort,uchar);
    uint getItemNum(ushort);
    void isHardMode();
    void getEquipMax();
    bool isNewPuzzle(uchar);
    GameWork* getRealAreaNo(); // 0x0058690
    void getUseItemMax();
    int isClearPuzzle(uchar);
    void getEquipStatus(DataPc *,uchar,ushort,uchar);
    bool isNewColosseum(uchar);
    short getBadgeBitFlag();
    uint isPlayablePuzzle(uchar);
    GameWork* getPuzzleClearTime(uchar);
    GameWork* getColosseumBestTurn(uchar);
};