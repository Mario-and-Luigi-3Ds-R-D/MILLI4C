LDR             R1, [R0,#8]
LDR             R3, [R2]
CMP             R1, #0
BEQ             loc_13619C
LDR             R12, [R0]
ADD             R12, R12, #1
CMP             R1, R12
BEQ             loc_13619C
LDR             R12, [R0,#0xC]
CMP             R1, R12
BNE             loc_13619C
CMP             R3, #0
LDRNE           R1, [R2,#8]
CMPNE           R1, #0
BEQ             loc_13619C
ADD             R1, R0, #0x344
CMP             R1, R2
CMPNE           R1, #0
BEQ             loc_13616C
STR             R3, [R1]
LDR             R3, [R2,#4]
STR             R3, [R1,#4]
LDR             R3, [R2,#8]
STR             R3, [R1,#8]
LDR             R3, [R2,#0xC]
STR             R3, [R1,#0xC]
LDR             R2, [R2]
ADD             R1, R0, #0x150
ADD             R0, R0, #0x190
LDR             R3, [R1]
CMP             R3, #0
BEQ             loc_136194
ADD             R1, R1, #4
CMP             R1, R0
BNE             loc_136178
BX              LR
STR             R2, [R1]
BX              LR
MOV             R0, R3
NOP
