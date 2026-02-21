MOV             R3, #0
ADD             R2, R0, #0x18
STR             R3, [R0]
STR             R2, [R0,#4]
STR             R3, [R0,#0xC]
ADD             R1, R0, #0x10
STR             R2, [R0,#0x1C]
STR             R1, [R0,#8]
STR             R2, [R0,#0x18]
STR             R1, [R0,#0x14]
STR             R1, [R0,#0x10]
STR             R3, [R0,#0x24]
BX              LR
