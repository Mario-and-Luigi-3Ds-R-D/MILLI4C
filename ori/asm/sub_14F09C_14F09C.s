PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x3EC]
MOV             R5, R1
CMP             R0, #0
BEQ             loc_14F0C4
NOP
BL              sub_300FD4
MOV             R0, #0
STR             R0, [R4,#0x3EC]
LDR             R0, =off_6CE970
LDR             R1, =0x1063C8
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R1, R0; loc_1063C8
MOV             R0, #0x24 ; '$'
BL              sub_5F5948
CMP             R0, #0
NOP
BLNE            sub_149118
MOV             R1, R5
STR             R0, [R4,#0x3EC]
POP             {R4-R6,LR}
B               sub_148F74
