CODE_SECTION 0x00100000
{
    CODE 0x00100000
    {
        * (+CODE)
    }
    RODATA 0x0063d000
    {
        * (+CONST)
    }
    STATIC_INIT +0
    {
        * (.static_init)
    }
    ET +0
    {
        * (.ARM.exidx)
        * (.ARM.extab)
    }
}
RW_SECTION 0x006c9000
{
    RW 0x006c9000
    {
        * (+RW-DATA)
    }
    ZI 0x006e14a8
    {
        * (+ZI)
    }
}
MODULE_INFO (0x00100000 + (0x04000000 - 0x00100000))
{
    .module_id (0x00100000 + (0x04000000 - 0x00100000))
    {
        * (.module_id)
    }
}