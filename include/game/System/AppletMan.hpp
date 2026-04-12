#pragma once

#include "nn/os/os_CriticalSection.h"
#include "nn/os/os_LightEvent.h"

namespace AppletMan{

class Sleep{
    public:
        static nn::os::CriticalSection _callback;
        static nn::os::LightEvent _lightEventCallback;
        static nn::os::LightEvent _lightCallback;

        static char _callbackSleep;
        static bool _disable;
        static s8 _state;
        static bool _isSleep;
    public:
        int update(); // 100%
        void startup(); // 100%
        bool func(); //
        bool beginState();
        void beginFromSleep();
    };

namespace HomeMenu{

class NixSign{
    public:
        static int unk2;
        static int _callbackFunc;
        static void* _state;
    public:
        void setNixState(int state, uint);
        void getNixState(int state, uint);
    };
}
}

extern "C"{
    int sleepQueryCallback();
    void awakeCallback();
}