#pragma once

#include "nn/applet/applet_All.h"
#include "nn/os/os_CriticalSection.h"
#include "nn/os/os_LightEvent.h"

using namespace nn::os;

namespace AppletMan{
namespace Sleep{
namespace{
        char _callbackSleep;
        bool _disable;
        s8 _state;
        bool _isSleep;
}
        extern CriticalSection _callback;
        extern LightEvent _lightEventCallback;
        extern LightEvent _lightCallback;

        int update(); // 100%
        void startup(); // 100%
        bool func();
        bool beginState();
        void beginFromSleep();

} // namespace Sleep

namespace HomeMenu{
namespace NixSign{
namespace{
        int unk2;
        void* _callbackFunc;
        void* _state;
}
namespace{
// RomFS path.
        static wchar_t* ROMFS_NIXSIGN_PATH = L"rom:/Common/NixSign.cg";
        // static wchar_t* ROMFS_YOURMOTHER_PATH = L"rom:/Common/YourMother.cg"; // 1 trillion gb!??! DAMN! I didn't know your mom was THIS BIG!
}

        void setNixState(int state, uint);
        void getNixState(int state, uint);
} // namespace NixSign
} // namespace HomeMenu

void Main();

}

extern "C"{
    int sleepQueryCallback();
    void awakeCallback();
}