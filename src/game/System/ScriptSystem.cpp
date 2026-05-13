#include <System/ScriptSystem.hpp>

extern const unsigned char gScriptTable[10] = {1,2,4, 1,2,4, 2,4,4,4};

ScriptSystem::ScriptSystem(){
    this->mCommandMetaData = 0;
}

ScriptSystem::~ScriptSystem(){
}

void ScriptSystem::init(const void* data){
    uchar* scriptData;
    this->mCommandMetaData = scriptData;
}

/* ScriptSystem::rewind(ScriptUnit*, const ScriptCode*) */

/* Rewinds the current script. */
int ScriptSystem::rewind(ScriptUnit* pScriptUnit, ScriptCode const* pScriptCodeUnit) {
    unsigned short codeNum = pScriptCodeUnit->mCodeNum;
    int tmp = 6;
    uchar *base = ((16 * codeNum) + this->mCommandMetaData);

    int count = *base & 0x7F;
    if ((*base & 0x80) != 0)
        count++;
    
    for (int i = 0; i < count; i++) {
        if ((pScriptCodeUnit->mVarFlags >> i) & 1) {
            tmp += 2;
        } else {
            tmp += gScriptTable[(base[i / 2 + 1] >> ((i & 1) << 2)) & 0xF];
        }
    }
    pScriptUnit->mUnitValue -= tmp;
    return tmp;
}

/* ScriptSystem::loadArrayElement(unsigned short *array, short index) */

/* Loads a array element, entered into array */

float ScriptSystem::loadArrayElement(unsigned short *array, short index) {
    unsigned int elementType = (*array & 0x0F00) >> 8;
    int elementOffset = index * gScriptTable[elementType];
    unsigned char *elementPtr = ((unsigned char*) array) + 2 + elementOffset;
    
    switch (elementType) {
        case 0:
            return (float)*((uchar*) elementPtr);
        case 3: {
            unsigned char element = *((uchar*) elementPtr);
            return (float)(char) element;
        }
        case 1:
            return (float) *((ushort*) elementPtr);
        case 4:
        case 6: {
            ushort element = *((ushort*) elementPtr);
            return (float) (short) element;
        }
        case 2:
            return (float) (*((uint*) elementPtr) & 0x00FFFFFF | ((uint) *(elementPtr + 3) << 24));
        case 5:
        case 7: {
            return (float) (int) (*((uint*) elementPtr) & 0x00FFFFFF | ((uint) *(elementPtr + 3) << 24));
        }
        case 8: {
            int element = (*((uint*) elementPtr) & 0x00FFFFFF | ((uint) *(elementPtr + 3) << 24));
            return *((float*) &element);
        }
        default:
            return 0.0f;
    }
}