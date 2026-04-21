#include <Equip/GameWork.hpp>
GameWork gGameWork;

/*void GameWork::initGameWork(void){
}

void GameWork::updatePlayTime(void){
}

void GameWork::updateEquip(DataPc* pData,ushort param_2,ushort param_3,int param_4){
}

void GameWork::startPlayTime(void){
}
*/

#ifdef NONMATCHING
#endif

void GameWork::updatePcStatus(uchar arg1) {
    UpdatePcStatus((DataPc*)((u8*)this + 0xE8 * arg1 + 0x74C));
}

//STUBS
void GameWork::UpdatePcStatus(DataPc* status){
}

//int GameWork::addItem(ushort,char){
//}

void GameWork::equipBadge(uchar index, ushort badge) {
    *(s16*)((u8*)this + index * 0xE8 + 0x78A) = badge;
}

/*
int GameWork::addPcStatus(uchar,PcStatusType,DataPc::ParamAddType,int,bool){ // Return type is guessed actually do and make shit up.
}

void GameWork::getPlayTime(short *,short *,short *,short *){
}*/

void GameWork::onNewPuzzle(uchar arg1) {
    mNewPuzzle = mNewPuzzle | (1 << arg1);
}

// NON MATCH
/*int GameWork::ApplyPerCent(int param_1,int param_2){
    if(param_1 !=0){
        param_1 *=param_2;
        if(param_2 != 0){
            if(param_2 <= 0){
                int param_r2 = 0x51EB851F;
                param_r2 = param_1 -= 0x32;
            }
            else{
                param_1+= 0x32;
            }
            return (param_1 / 100);
        }
    }
    return 0;
}
*/

void GameWork::onNewColosseum(uchar arg1) {
    s32 one = 1;
    __schedule_barrier();
    mNewColosseum = mNewColosseum | (one << arg1);
}

void GameWork::putBadgeBitFlag(ushort arg1) {
    *(volatile s16*)&this->mGetBitFlag = arg1;
}

int GameWork::existKoopaCastle(void){
  int pIsExist;
    
  pIsExist = -((gGameWork.mKoopaCastle << 1) >> 0x1f);
  if (pIsExist != 0) {
    pIsExist = 1;
  }
  return pIsExist;
}

void GameWork::onClearColosseum(uchar arg1) {
    s32 one = 1;
    __schedule_barrier();
    mClearColosseum = mClearColosseum | (one << arg1);
}

void GameWork::onPlayablePuzzle(uchar arg1) {
    *(u32*)&mPlayablePuzzle = *(u32*)&mPlayablePuzzle | (1 << arg1);
}

void GameWork::putPuzzleClearTime(uchar arg1, uint arg2) {
    volatile s32* ptr = (volatile s32*)((u8*)this + (arg1 << 2) + 0xde8);
    *ptr = arg2;
}

void GameWork::putMenuEquipBitFlag(uint arg1, bool arg2) {
    u32* ptr = (u32*)((u8*)this + (arg1 >> 5) * 4 + 0x6e4);
    volatile u32* vptr = (volatile u32*)ptr;
    u32 value = *vptr;
    if (arg2 != 0){
        value |= (1 << (arg1 & 0x1F));
    } 
    else{
        value &= ~(1 << (arg1 & 0x1F));
    }
    *vptr = value;
}

void GameWork::putColosseumBestTurn(uchar arg1, uchar arg2) {
    ((GameWork*)((u8*)this + arg1))->mColoBestTurn = arg2;
}

int GameWork::addCoin(int arg1) {
    s32 temp_r3 = mCoinNum;
    s32 max_coins = 0xF423F;
    s32 zero = 0;
    s32 temp_r1 = arg1 + temp_r3;

    if (max_coins <= temp_r1) {
        max_coins = max_coins;
    }
    else{
        if (temp_r1 <= 0) {
            max_coins = zero;
        } 
        else {
            max_coins = temp_r1;
        }
    }

    mCoinNum = max_coins;
    return max_coins - temp_r3;
}

void GameWork::equipItem(uchar param_2, ushort param_3, uchar param_4) {
    ushort param_r0;
    ushort param_r0_2;
    DataPc* pData;

    pData = (DataPc*)((u8*)this + (param_2 * 0xE8) + 0x74C);
    ((DataPc*)((u8*)pData + (param_4 * 2)))->flag6 = param_3;
    GameWork::UpdatePcStatus(pData);
    param_r0 = pData->flag4;
    if ((u32) pData->flag2 > (u32) param_r0) {
        pData->flag2 = (s32) param_r0;
    }
    param_r0_2 = pData->flag5;
    if ((u32) pData->flag3 > (u32) param_r0_2) {
        pData->flag3 = (s32) param_r0_2;
    }
}
/*
uint GameWork::getItemNum(ushort){
}

void GameWork::isHardMode(){
}

void GameWork::getEquipMax(){
}*/

bool GameWork::isNewPuzzle(uchar param_1) {
    if (!(this->mNewPuzzle & (1 << param_1))) {
        return 1;
    }
    return 0;
}
/*
uchar GameWork::getRealAreaNo(){
}*/

uchar GameWork::getRealAreaNo(uchar realAreaNo) {
    u32 var_r0 = realAreaNo;
    if (var_r0 >= 0x11U) {
        var_r0 = 0xFF;
    } 
    else if (var_r0 >= 9U) {
        var_r0 -= 8;
    }
    return (uchar)var_r0;
}
/*
void GameWork::getUseItemMax(){
}

int GameWork::isClearPuzzle(uchar){
}

void GameWork::getEquipStatus(DataPc *,uchar,ushort,uchar){
}

bool GameWork::isNewColosseum(uchar){
}

short GameWork::getBadgeBitFlag(){
}

uint GameWork::isPlayablePuzzle(uchar){
}

void GameWork::getPuzzleClearTime(uchar* param_1, int param_2, int param_3) {
}

GameWork* GameWork::getColosseumBestTurn(uchar){
}*/

uint GameWork::isPlayablePuzzle(uchar param_1) {
    return (*(u32*)((u8*)this + (param_1 >> 5) * 4 + 0x724) >> (param_1 & 0x1F)) & 1;
}