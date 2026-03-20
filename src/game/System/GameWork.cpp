#include <System/GameWork.hpp>
GWKoopaCastle pKoopaExist;

// These need fixing! Not done by me.
//
// Some of these were done by another user, and I just put them in. So some may look like shit, but its matching.
//
// Ooh-boy! Lots of stinky-ass hacks coming up. With this one, huh?

void GameWork::initGameWork(void){
}

void GameWork::updatePlayTime(void){
}



void GameWork::updateEquip(DataPc* pData,ushort param_2,ushort param_3,int param_4){
}

void GameWork::startPlayTime(void){
}

void GameWork::UpdatePcStatus(DataPc* status){
}

int GameWork::addItem(ushort,char){
}

void GameWork::equipBadge(uchar* param_1, uchar param_2, ushort param_3) {
    *(short*)(param_1 + param_2 * 0xE8 + 0x78A) = param_3;
}

int GameWork::addPcStatus(uchar,PcStatusType,DataPc::ParamAddType,int,bool){ // Return type is guessed actually do and make shit up.
}

void GameWork::getPlayTime(short *,short *,short *,short *){
}

void GameWork::onNewPuzzle(uchar* param_1, int param_2) {
    u32 value = *(u32*)(param_1 + 0xe5c);
    *(u32*)(param_1 + 0xc00 + 0x25c) = value | (1 << param_2);
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

void GameWork::onNewColosseum(uchar* param_1, uchar param_2) {
    uchar* param_3 = (uchar*)param_1 + 0xd00;
    int one = 1;
    __schedule_barrier(); // hack to make ts work

    ushort newColo = *(ushort*)(param_3 + 0xe6);
    *(ushort*)(param_3 + 0xe6) = newColo | (1 << param_2);
}

void GameWork::putBadgeBitFlag(uchar* param_1, ushort param_2) {
    *(volatile s16*)(param_1 + 0xa00 + 0x1c) = param_2; // fix this
}

int GameWork::existKoopaCastle(void){
  int pIsExist;
    
  pIsExist = -((pKoopaExist.mIsExist << 1) >> 0x1f);
  if (pIsExist != 0) {
    pIsExist = 1;
  }
  return pIsExist;
}

void GameWork::onClearColosseum(uchar param_1, int param_2) {
    u8* base = (u8*)param_1 + 0xd00;
    s32 one = 1;
    __schedule_barrier();
    u16 value = *(u16*)(base + 0xe4);
    *(u16*)(base + 0xe4) = value | (one << param_2);
}

void GameWork::onPlayablePuzzle(uchar param_1, int param_2) {
    u32 value = *(volatile u32*)(param_1 + 0xe58); // fix this
    *(volatile u32*)(param_1 + 0xc00 + 0x258) = value | (1 << param_2);
}

void GameWork::putPuzzleClearTime(uchar* param_1, int param_2, uint param_3) {
    volatile s32* ptr = (volatile s32*)(param_1 + (param_2 << 2) + 0xde8); // fix this
    *ptr = param_3;
}

void GameWork::putMenuEquipBitFlag(uint* param_1, uint param_2, bool param_3) {
    uint* ptr = param_1 + (param_2 >> 5);
    volatile u32* vptr = (volatile u32*)((uchar*)ptr + 0x6E4);
    uint value = *vptr;
    if (param_3 != 0) {
        value |= (1 << (param_2 & 0x1F));
    } else {
        value &= ~(1 << (param_2 & 0x1F));
    }
    *vptr = value;
}

void GameWork::putColosseumBestTurn(u8* param_1, uchar param_2, uchar param_3) { // u8* isnt game accurate fix this when polishing
    ((GameWork*)(param_1 + param_2))->mColoBestTurn = param_3;
}

// NON MATCH

/*int GameWork::addCoin(int param_1) {
    int param_2 = this->mCoinNum;
    int pMaxCoins = 0xF423F;
    //int pZero = 0;
    int param_3;
    
    param_3 = param_1 + param_2;
    
    if (pMaxCoins <= param_3) {
        pMaxCoins = pMaxCoins;
    } else {
        if (param_3 <= 0) {
            pMaxCoins = 0;
        } else {
            pMaxCoins = param_3;
        }
    }
    this->mCoinNum = pMaxCoins;
    return pMaxCoins - param_2;
}*/

// END NON MATCH

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

uint GameWork::getItemNum(ushort){
}

void GameWork::isHardMode(){
}

void GameWork::getEquipMax(){
}

bool GameWork::isNewPuzzle(uchar param_1) {
    if (!(this->mNewPuzzle & (1 << param_1))) {
        return 1;
    }
    return 0;
}

uchar GameWork::getRealAreaNo(uchar){
}

uchar GameWork::getRealAreaNum(uchar param_1){
    u32 param_2;

    param_2 = param_1;
    if (param_2 >= 0x11U) {
        param_2= 0xFF;
    } else if (param_2 >= 9U) {
        param_2 -= 8;
    }
    return (uchar) param_2;
}

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
}

uint GameWork::FUN_005f1148(uint param_1) {
    return ((uint)((GameWork*)((int*)this + (param_1 >> 5)))->flag_0x724 >> (param_1 & 0x1F)) & 1;
}

