PUSH            {R4-R8,LR}
MOV             R5, R0
ADD             R0, R0, #0x10
MOV             R4, R1
MOV             R7, R2
MOV             R6, R0
BL              sub_13273C
ADD             R0, R4, #0x24 ; '$'
MOV             R3, #0
LDM             R0, {R0,R2}
MOV             R1, R0
ORRS            R12, R0, R2
STREQ           R3, [R5,#4]
STREQ           R3, [R5,#8]
BEQ             loc_13E368
CMP             R2, #0
BEQ             loc_13E350
CMP             R1, #0
STR             R1, [R2,#0x24]
STREQ           R2, [R5,#4]
CMP             R0, #0
BEQ             loc_13E368
LDR             R1, [R4,#0x28]
CMP             R1, #0
STR             R1, [R0,#0x28]
STREQ           R0, [R5,#8]
LDR             R1, [R5,#4]
CMP             R1, #0
BEQ             loc_13E3C0
LDR             R0, [R1,#0x20]
CMP             R0, R7
BGT             loc_13E3A0
LDR             R0, [R1,#0x24]
CMP             R0, #0
STRD            R0, R1, [R4,#0x24]
STRNE           R4, [R0,#0x28]
STREQ           R3, [R4,#0x24]
STREQ           R4, [R5,#4]
STR             R4, [R1,#0x24]
B               loc_13E3D0
LDR             R0, [R1,#0x28]
CMP             R0, #0
MOVNE           R1, R0
BNE             loc_13E374
ADD             R0, R4, #0x24 ; '$'
STR             R4, [R1,#0x28]
STM             R0, {R1,R3}
B               loc_13E3CC
STR             R3, [R4,#0x24]
STR             R4, [R5,#4]
STR             R3, [R4,#0x28]
STR             R4, [R5,#8]
MOV             R0, R6
POP             {R4-R8,LR}
B               sub_1327BC
