LDRB            R2, [R1,#0x31]
CMP             R2, #0
MOVEQ           R2, #0x20000
MOVNE           R2, #0x10000
CMP             R2, #0x10000
STR             R2, [R0]
BEQ             loc_20D85C
CMP             R2, #0x20000
MOVEQ           R2, #0x30000
MOVNE           R2, #0x20000
STR             R2, [R0,#4]
LDRB            R2, [R1,#0x32]
CMP             R2, #0
MOVNE           R2, #1
STR             R2, [R0,#0xC]
STR             R2, [R0,#8]
LDRB            R1, [R1,#0x33]
CMP             R1, #1
MOVNE           R1, #0
STRB            R1, [R0,#0x10]
BX              LR
