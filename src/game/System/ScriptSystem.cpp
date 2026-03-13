#include <System/ScriptSystem.hpp>
extern const unsigned char unk_658108[];

ScriptSystem::ScriptSystem(){
    this->mStart = 0;
}

ScriptSystem::~ScriptSystem(){
}

void ScriptSystem::init(const void*){
    int* param_2;
    this->mStart = (int)param_2;
    return;
}

// No Hacks here, unfortately..
//
// Was a pain in thr ass, users Darxoon, Moddimation, M-1, Troy, and finally our G cuckydev got it to work, Hoo-ray!
int ScriptSystem::rewind(ScriptUnit* pCurrentUnit, ScriptCode const* pCurrentCode) {
    unsigned short codeNum = pCurrentCode->mCodeNum;
    int tmp = 6;
    uchar *base = ((16 * codeNum) + (uchar*)this->mStart);

    int count = *base & 0x7F;
    if ((*base & 0x80) != 0)
        count++;
    
    for (int i = 0; i < count; i++) {
        if ((pCurrentCode->mCodeUnit >> i) & 1) {
            tmp += 2;
        } else {
            tmp += unk_658108[(base[i / 2 + 1] >> ((i & 1) << 2)) & 0xF];
        }
    }
    pCurrentUnit->mUnitValue -= tmp;
    return tmp;
}