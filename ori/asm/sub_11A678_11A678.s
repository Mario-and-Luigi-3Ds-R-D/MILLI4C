PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =dword_700900
MOV             R5, R0
BL              sub_13273C
LDR             R3, =byte_6D2498
LDR             R1, [R3,#(dword_6D249C - 0x6D2498)]
CMP             R1, #0
BEQ             loc_11A6E4
CMP             R1, R4
BNE             loc_11A6D8
LDM             R1, {R0,R2}
CMP             R0, #0
STREQ           R2, [R3,#(dword_6D249C - 0x6D2498)]
STRNE           R2, [R0,#4]
CMP             R2, #0
STREQ           R0, [R3,#(dword_6D24A0 - 0x6D2498)]
STRNE           R0, [R2]
MOV             R0, #0
STR             R0, [R1]
STR             R0, [R1,#4]
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_1327BC
LDR             R1, [R1,#4]
CMP             R1, #0
BNE             loc_11A69C
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_1327BC
