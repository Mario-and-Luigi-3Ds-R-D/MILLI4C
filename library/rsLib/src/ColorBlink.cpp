#pragma once

#include "ColorBlink.hpp"

//allnon match
namespace rsLib{
ColorBlink::ColorBlink(){
    this->flag2 = 0;
    this->flag1 = 0;
    return;
}

ColorBlink::~ColorBlink(){
    this->flag2 = 0;
}

/*ColorBlink::init(uint param_2){
    Frm_play(this,param_2);
    this->flag1 = 0;
}*/



} // rsLib