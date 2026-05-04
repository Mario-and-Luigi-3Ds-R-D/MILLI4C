/* Yet to be implemented, but 100%. Help was provided by user "DimiDimit" so credit to him on PadReader Inline Research. */
//
// Filename: main.cpp
// Purposes: Mainloop + nninitStartup();

// SYSTEM
#include "System/AppletMan.hpp"
#include "System/RandSys.hpp"
#include "System/Backup.hpp"
#include "System/Task.hpp"
#include "System/Grp.hpp"
#include "System/Tasks/Boot.hpp"
#include "System/CtrController.hpp"
#include "System/Memory/MemAlcCtr.hpp"
#include "System/Memory/MemAlc.hpp"
#include "System/Memory/Mem.hpp"

// MISC
#include "Equip/GameWork.hpp"
#include "Equip/GameDB.hpp"
#include "Gfx/GXRes.hpp" // its prob not gxrescmn but ill research
#include "Gfx/Prim.hpp"
#include "Message/MessageDrawer.hpp"
#include "Message/MessageSys.hpp"
#include "Snd/SndSys.hpp"

// CTRSDK-4_2_5 EXTERNS

#include "nn/cfg/CTR/cfg_Api.h"
#include "nn/fnd/fnd_DateTime.h"
#include "nn/fs/fs_Api.h"
#include "nn/hid/hid_Api.h"
#include "nn/hid/CTR/hid_Pad.h"
#include "nn/ptm/CTR/ptm_Api.h"

extern "C" void nninitStartUpDefault(); // nn/src/init/init_Default.cpp 

// Custom, so it goes here.
extern "C" void nninitStartUp(){
    nninitStartUpDefault();
    // CmdCacheInit::startup();
}

/* AppletMan::Main() */
inline void AppletMan::Main(){

}

/* nnMain */
extern "C" void nnMain(){
    AppletMan::Main();
    AppletMan::Sleep::startup();
}