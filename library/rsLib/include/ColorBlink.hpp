#include "rsTypes.hpp"

namespace rsLib{
class ColorBlink{
    float mValue; // 0x0
    short flag1; // 0x4
    short flag2; // 0x6
public:
    ~ColorBlink(); // 100%
    ColorBlink(); // 100%
    void init(uint param_2); // 100%
    float get();
    ushort update(float param_1); 
}; //  class ColorBlink
} // Namespace rsLib