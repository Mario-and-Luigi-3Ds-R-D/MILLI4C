#define STUB( SYMBOL )                                               \
        extern __attribute__( ( section( "stubs" ) ) ) void SYMBOL() \
        {                                                            \
                __nop();                                             \
                __nop();                                             \
                __nop();                                             \
        }

#undef STUB



