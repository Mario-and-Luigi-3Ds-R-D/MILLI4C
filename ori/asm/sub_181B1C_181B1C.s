PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0xC]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x468]
CMP             R0, #0
BEQ             locret_181B4C
BL              sub_2FF5D4
MOV             R0, #0
STR             R0, [R4,#0x468]
POP             {R4,PC}
