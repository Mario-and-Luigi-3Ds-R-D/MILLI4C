#include <System/ScriptSystem.hpp>
extern const unsigned char ScriptTable[10] = {1,2,4, 1,2,4, 2,4,4,4};

ScriptSystem::ScriptSystem(){
    this->mCommandMetaData = 0;
}

ScriptSystem::~ScriptSystem(){
}

void ScriptSystem::init(const void*){
    int* data;
    this->mCommandMetaData = (int)data;
    return;
}

// Rewinds the current script.
int ScriptSystem::rewind(ScriptUnit* pCurrentUnit, ScriptCode const* pCurrentCode) {
    unsigned short codeNum = pCurrentCode->mCodeNum;
    int tmp = 6;
    uchar *base = ((16 * codeNum) + (uchar*)this->mCommandMetaData);

    int count = *base & 0x7F;
    if ((*base & 0x80) != 0)
        count++;
    
    for (int i = 0; i < count; i++) {
        if ((pCurrentCode->mCodeUnit >> i) & 1) {
            tmp += 2;
        } else {
            tmp += ScriptTable[(base[i / 2 + 1] >> ((i & 1) << 2)) & 0xF];
        }
    }
    pCurrentUnit->mUnitValue -= tmp;
    return tmp;
}

// Loads script array.

float ScriptSystem::loadArrayElement(unsigned short *array, short index) {
    unsigned int elementType = (*array & 0x0F00) >> 8;
    int elementOffset = index * ScriptTable[elementType];
    unsigned char *elementPtr = ((unsigned char*) array) + 2 + elementOffset;
    
    switch (elementType) {
        case 0:
            return (float) *((unsigned char*) elementPtr);
        case 3: {
            unsigned char element = *((unsigned char*) elementPtr);
            return (float) (signed char) element;
        }
        case 1:
            return (float) *((unsigned short*) elementPtr);
        case 4:
        case 6: {
            unsigned short element = *((unsigned short*) elementPtr);
            return (float) (signed short) element;
        }
        case 2:
            return (float) (*((unsigned int*) elementPtr) & 0x00FFFFFF | ((unsigned int) *(elementPtr + 3) << 24));
        case 5:
        case 7: {
            return (float) (signed int) (*((unsigned int*) elementPtr) & 0x00FFFFFF | ((unsigned int) *(elementPtr + 3) << 24));
        }
        case 8: {
            unsigned int element = (*((unsigned int*) elementPtr) & 0x00FFFFFF | ((unsigned int) *(elementPtr + 3) << 24));
            return *((float*) &element);
        }
        default:
            return 0.0f;
    }
}