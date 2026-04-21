#include <System/AllApplication.hpp>
extern "C" void nninitStartUpDefault(); // nn/src/init/init_Default.cpp 

inline void AppletMan::Main(){

}

extern "C" void nninitStartUp(){
    nninitStartUpDefault();
    // CmdCacheMulti::StartUp();
}

// STUBS
extern "C" void nnMain(){
    AppletMan::Main();
    AppletMan::Sleep::startup();
}