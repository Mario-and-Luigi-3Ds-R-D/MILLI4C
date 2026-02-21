PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             locret_158990
MOV             R1, SP
MOV             R0, #0
BL              sub_1164C0
LDR             R12, [SP,#0x10+var_10]
LDR             R0, [R4,#0x20]
LDR             R3, [R4,#4]
MOV             R2, #0
MOV             R1, #0x100
BLX             R12
MOV             R0, #0
STR             R0, [R4,#0x20]
ADD             R0, R4, #4
MOV             R2, #0x18
MOV             R1, #0
BL              sub_110BE4
POP             {R3-R5,PC}
