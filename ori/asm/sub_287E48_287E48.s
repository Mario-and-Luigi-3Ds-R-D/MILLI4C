CMP             R1, #2
LDR             R0, [R0,#0x20]
MOVEQ           R1, #1
MOVNE           R1, #2
NOP
VSTR            S0, [R0,#0xF0]
STRB            R1, [R0,#0xFC]
BX              LR
