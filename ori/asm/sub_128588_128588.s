MOV             R3, R0
LDR             R0, =byte_6D4A28
MOV             R2, #0xFFFFFFFF
PUSH            {R4,LR}
STR             R2, [R1]
LDR             R0, [R0,#(dword_6D4A30 - 0x6D4A28)]
LDR             R4, =0xC8A0A7F8
CMP             R0, #0
BEQ             loc_1285B8
MOV             R2, R1
MOV             R1, R3
BL              sub_132B34
MOV             R0, R4
POP             {R4,PC}
