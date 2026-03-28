#include "rsTypes.hpp"

namespace rsLib{
class ColorBlink{
    float mValue;
    short flag1;
    short flag2;
public:
    ~ColorBlink(); // 100%
    ColorBlink(); // 100%
    void init(uint param_2); // 100%
    float get();
    ushort update(float param_1, int* param_2); 
}; //  class ColorBlink
} // Namespace rsLib