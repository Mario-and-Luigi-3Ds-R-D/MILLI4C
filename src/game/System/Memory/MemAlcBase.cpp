#include <System/Memory/MemAlcBase.hpp>

int MemAlcBase::GetOpt(int currentOpt, bool isNew, uint param_3) {
    int newOperator;

    if (currentOpt <= 4){
        newOperator = 0;
    } 
    else{
        newOperator = currentOpt - 1;
    }
    if (isNew != 0){
        newOperator |= 0x800000;
    }
    return newOperator | param_3;
}