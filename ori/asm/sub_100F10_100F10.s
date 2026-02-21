LDR             R2, [R0,#4]
CMP             R2, #0
BEQ             loc_100F28
LDR             R1, [R0]
LDRB            R3, [R1]
ADDS            R1, R1, #1
CMP             R3, #0
BEQ             loc_100F28
SUBS            R2, R2, #1
STM             R0!, {R1,R2}
MOVS            R0, R3
BX              LR
MOVS            R1, #1
STR             R1, [R0,#0xC]
SUBS            R0, R1, #2
BX              LR
