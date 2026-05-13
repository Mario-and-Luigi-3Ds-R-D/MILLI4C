#pragma once

#include "nn/os/os_CriticalSection.h"
#include "nn/os/os_LightEvent.h"

using namespace nn::os;

namespace AppletMan{
/* src/main.cpp */
void Main();

namespace Sleep{
        extern char _callbackSleep;
        extern bool _disable;
        extern s8 _state;
        extern bool _isSleep;

        int update(); // 100%
        void startup(); // 100%
        bool func();
        bool beginState();
        void beginFromSleep();

        extern CriticalSection _callback;
        extern LightEvent _lightEventCallback;
        extern LightEvent _lightCallback;
        // extern CellAnime _CellAnime
        // extern CellAnimeState _CAState
        // extern GXResCmn _GxRes
} // namespace Sleep
namespace HomeMenu{
namespace NixSign{
namespace{
        static wchar_t* ROMFS_NIXSIGN_PATH = L"rom:/Common/NixSign.cg";
        // static wchar_t* ROMFS_YOURMOTHER_PATH = L"rom:/Common/YourMother.cg"; // 1 trillion gb!?! DAMN! I didn't know your mom was THIS BIG!
}
        extern int unk2;
        extern void* _callbackFunc;
        extern void* _state;

        void getNixState();
        void setNixState();
} // namespace NixSign
} // namespace HomeMenu
} // namespace AppletMan

extern "C"{
    int sleepQueryCallback();
    void awakeCallback();
}