#pragma once

#include "Equip/DataPc.hpp"
#include "types.hpp"

class GameWork{
    u8 pad_1[6]; // 0x0
    ushort flag1_0x6; // 0x6
    ushort flag2_0x8; // 0x8
    ushort flag3_0xa; // 0xa
    ushort flag4_0xc; // 0xc
    ushort flag5_0xe; // 0xe
    ushort flag6_0x10; // 0x10
    u8 pad_2[10]; // 0x12
    ushort mBadgeBitFlag; // 0x1c
    u8 pad_3[17]; // 0x1e
    byte flag_0x2f; // 0x2f
    u8 pad_4[90]; // 0x30
    uchar flag_0x8a; // 0x8a
    u8 pad_5[274]; // 0x8b
    byte flag_0x1a4; // 0x1a4
    u8 pad_6[7]; // 0x1a5
    ushort mGetBadgeBitFlag; // 0x1ac
    ushort flag_0x1ae; // 0x1ae
    u8 pad_7[89]; // 0x1b0
    int flag_0x209; // 0x209
    int flag_0x20d; // 0x20d
    u8 pad_8[1235]; // 0x211
    int mGetMenuEquipFlag; // 0x6e4
    ushort flag_0x6e8; // 0x6e8
    u8 pad_16[101]; // 0x6ea
    ushort flag_0x74f; // 0x74f
    ushort flag_0x751; // 0x751
    ushort flag_0x753; // 0x753
    ushort flag_0x755; // 0x755
    u8 pad_9[33]; // 0x757
    int flag_0x778; // 0x778
    int flag_0x77c; // 0x77c
    u8 pad_10[412]; // 0x780
    int mCoinNum; // 0x91c
    u8 pad_11[230]; // 0x920
    ushort mItem; // 0xa06
    ushort mItemNum; // 0xa08
    byte flag_0xa0a; // 0xa0a
    u8 pad_12[17]; // 0xa0b
    ushort mGetBitFlag; // 0xa1c
    u8 pad_13[950]; // 0xa1e
    byte mColoBestTurn; // 0xdd4
    u8 pad_14[15]; // 0xdd5
    ushort mClearColosseum; // 0xde4
    ushort mNewColosseum; // 0xde6
    int mPuzzleClearTime; // 0xde8
    u8 pad_15[112]; // 0xdec
    uint mPlayablePuzzle; // 0xe58
    uint mNewPuzzle; // 0xe5c
public:
    void initGameWork(void);
    void initializeRO(); //param_2, and param_3
    void finalizeRO();
    void updatePlayTime(void);
    void startPlayTime(void);
    void UpdatePcStatus(DataPc* status);
    int addItem(ushort,char);
    static void equipBadge(uchar*,uchar,ushort); // uchar, ushort static
    int addPcStatus(uchar,PcStatusType,DataPc::ParamAddType,int,bool);
    void getPlayTime(short *,short *,short *,short *);
    static void onNewPuzzle(uchar*, int); // config into __thiscall
    static int ApplyPerCent(int,int);
    uchar getRealAreaNo(uchar); // 0x005F0FD0
    static void onNewColosseum(uchar*, uchar);
    static void putBadgeBitFlag(uchar*, ushort);
    int existKoopaCastle(void);
    static void onClearColosseum(uchar, int);
    static void onPlayablePuzzle(uchar, int);
    static void putPuzzleClearTime(uchar*,int, uint);
    static void putMenuEquipBitFlag(uint*,uint,bool); // static thiscall
    static void putColosseumBestTurn(u8*, uchar,uchar); // static saids uchar,uchar fix this-> func
    static int addCoin(GameWork*, int); // only int in static
    void equipItem(uchar,ushort,uchar);
    uint getItemNum(ushort);
    void isHardMode();
    void getEquipMax();
    bool isNewPuzzle(uchar);
    static uchar getRealAreaNum(uchar); // 0x0058690
    void getUseItemMax();
    int isClearPuzzle(uchar);
    void getEquipStatus(DataPc *,uchar,ushort,uchar);
    bool isNewColosseum(uchar);
    short getBadgeBitFlag();
    uint isPlayablePuzzle(uchar);
    static void getPuzzleClearTime(uchar*, int, int); // all static is made by the other dude
    GameWork* getColosseumBestTurn(uchar);
};
//static_assert(sizeof(GameWork) == 0xe60);

typedef struct{
    u8 gap[0x304];
    int mIsExist;
} GWKoopaCastle;