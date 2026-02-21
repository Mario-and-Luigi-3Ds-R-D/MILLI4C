LDR             R1, =off_6B0F58
PUSH            {R4,LR}
MOV             R4, R0
STR             R1, [R0]
LDR             R0, [R0,#0x4C]
CMP             R0, #0
BEQ             loc_1C45A0
BL              sub_110D10
MOV             R0, #0
STR             R0, [R4,#0x4C]
MOV             R0, R4
POP             {R4,LR}
B               sub_300FD4
