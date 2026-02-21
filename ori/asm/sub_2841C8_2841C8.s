PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R4, [R0,#0x468]
CMP             R4, #0
BEQ             loc_28422C
LDR             R0, [R4,#4]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_2841F4
BL              sub_533330
STR             R6, [R4,#4]
LDR             R0, [R4,#0xC]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R1, =off_6C0770
ADD             R0, R4, #8
STR             R1, [R4,#8]
LDR             R1, [R4,#0xC]
CMP             R1, #0
STRNE           R6, [R1,#0x64]
STRNE           R6, [R0,#4]
MOV             R0, R4
BL              sub_300FD4
STR             R6, [R5,#0x468]
ADD             R0, R5, #0x3F8
NOP
POP             {R4-R6,LR}
SUB             R0, R0, #0x3F8
B               sub_14F3EC
