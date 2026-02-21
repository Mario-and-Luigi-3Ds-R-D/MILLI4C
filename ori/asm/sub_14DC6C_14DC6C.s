PUSH            {R3-R5,LR}
MOV             R2, #0
LDR             R4, [R0,#0xC]
MOV             R5, R1
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
STR             R2, [SP,#0x10+var_10]
BL              sub_4E3CA0
LDR             R0, [R4,#0x18]
MOV             R2, #0
MOV             R1, R5
BL              sub_14D960
LDR             R0, [R4,#0x18]
POP             {R3-R5,LR}
MOV             R1, #1
NOP
