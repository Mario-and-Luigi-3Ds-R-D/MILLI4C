LDR             R1, [R0,#0x20]
CMP             R1, #0
BEQ             loc_14C2B4
SUB             R0, R1, #0xD8
B               sub_14C2A0
LDR             R1, [R0,#0xE4]
CMP             R1, #0
MOVEQ           R0, #0
BX              LR
