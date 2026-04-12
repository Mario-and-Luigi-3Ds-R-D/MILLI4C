#include "types.hpp"

class MComSys{
public:
    int getPrevAreaNo();
    void initPrevAreaNo();
    void setPrevAreaNo(int);

    static int _sAreaNo;
};