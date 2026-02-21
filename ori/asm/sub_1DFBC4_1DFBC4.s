MOV             R3, #0
STR             R3, [R0,#4]
STR             R3, [R0,#8]
STR             R3, [R0,#0xC]
LDR             R3, =off_6B17B8
STR             R3, [R0]
STRB            R1, [R0,#0x10]
STR             R2, [R0,#0x14]
BX              LR
