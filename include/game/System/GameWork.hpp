#pragma once

#include "DataPc.hpp"
#include "game/types.hpp"

class GameWork{
public:
    GameWork(void);
    void initGameWork();
    void updatePlayTime();
    void startPlayTime();
    void UpdatePcStatuc(DataPc* status); //not a this call
    int addItem(ushort,char);
    void equipBadge(uchar,ushort);
    int addPcStatus(uchar,PcStatusType,DataPc::ParamAddType,int,bool);
    void getPlayTime(short *,short *,short *,short *);
    void onNewPuzzle(uchar);
    int ApplyPerCent(int,int);
    uint getRealAreaNo(uchar);
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
    GameWork* getRealAreaNo(void);
    void getUseItemMax();
    int isClearPuzzle(uchar);
    void getEquipStatus(DataPc *,uchar,ushort,uchar);
    bool isNewColosseum(uchar);
    short getBadgeBitFlag();
    uint isPlayablePuzzle(uchar);
    GameWork* getPuzzleClearTime(uchar);
    GameWork* getColosseumBestTurn(uchar);
};