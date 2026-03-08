#include "rsTypes.hpp"

namespace rsLib{
class ColorBlink{
    u8 pad[6];
    short flag1;
    short flag2;
public:
    ~ColorBlink();
    ColorBlink();
    void init(uint param_2);
    void get();
    ushort update(float param_1, int* param_2);
}; //  class ColorBlink
} // Namespace rsLib