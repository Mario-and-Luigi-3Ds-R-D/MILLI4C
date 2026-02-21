PUSH            {R4,LR}
ADD             R4, R0, #0x1B0
ADD             R1, R0, #0x1B4
LDR             R0, [R0,#0x1B8]
CMP             R0, R1
BNE             loc_1D76A4
LDR             R0, [R4]
CMP             R0, #0
LDRNE           R1, =sub_5B8C24
BLNE            sub_3016C0
MOV             R0, #0
STR             R0, [R4]
STR             R0, [R4,#0xC]
POP             {R4,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_1D7694
