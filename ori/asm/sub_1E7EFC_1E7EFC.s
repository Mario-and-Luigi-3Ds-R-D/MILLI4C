LDR             R2, [R1,#0xC]
TST             R2, #0x100
BEQ             loc_1E7F14
LDR             R3, [R0,#0x648]
ORR             R3, R3, #0x1800000
STR             R3, [R0,#0x648]
LDR             R2, [R1,#0xC]
TST             R2, #0x400
BEQ             loc_1E7F4C
LDR             R12, [R0,#0x640]
LDR             R2, [R0,#0x644]
BIC             R12, R12, #0x8100
BIC             R12, R12, #0xFF
BIC             R12, R12, #0x3F000000
BIC             R12, R12, #0xFF0000
ORR             R12, R12, #0x920000
ORR             R12, R12, #0x124
ORR             R12, R12, #0x24000000
STR             R2, [R0,#0x644]
STR             R12, [R0,#0x640]
NOP
NOP
