LDR             R1, [SP,#arg_0]
LDR             R3, [R0,#4]
MOV             R2, #0
CMP             R3, R1
BHI             loc_158A54
LDR             R12, [R0,#8]
ADD             R3, R3, R12
CMP             R1, R3
BCS             loc_158A54
LDR             R1, [R0,#0xC]
SUBS            R1, R1, #1
STR             R1, [R0,#0xC]
STREQ           R2, [R0,#8]
BX              LR
LDR             R1, [R0,#0x18]
SUBS            R1, R1, #1
STR             R1, [R0,#0x18]
STREQ           R2, [R0,#0x14]
BX              LR
