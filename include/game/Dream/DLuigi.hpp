#pragma once

#include "game/types.hpp"
#include "MoveWorkF.hpp"
#include "FieldObj.hpp"

class DLuigi{
};

class DLuigiCam{
};

class DLuigiPartTask{ //Others need this first
};

class DLuigiEtc : public DLuigiPartTask{
};

class DLuigiHige : public DLuigiPartTask{
};

class DLuigiNoseRot : public DLuigiPartTask{
};

class DLuigiNoseSnz : public DLuigiPartTask{
};

class DLuigiRotBed : public FieldObjCA{
};

class DLuigiSwitch : public DLuigiPartTask{
};