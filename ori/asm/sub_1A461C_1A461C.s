LDR             R1, =off_6BB5F0
PUSH            {R4,LR}
STR             R1, [R0],#0x18
BL              sub_14F3EC
LDR             R2, =off_6C075C
SUB             R0, R0, #0x18
ADD             R1, R0, #0xC
STR             R2, [R0,#0xC]
LDR             R2, [R0,#0x10]
CMP             R2, #0
BEQ             loc_1A4654
MOV             R3, #0
STR             R3, [R2,#0x184]
STR             R3, [R1,#4]
POP             {R4,LR}
B               sub_300FD4
