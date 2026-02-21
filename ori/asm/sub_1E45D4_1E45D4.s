PUSH            {R4,LR}
MOV             R4, R0
BL              sub_1F1D78
LDR             R0, [R4,#0x10]
CMP             R0, #0
BEQ             locret_1E4600
LDR             R0, [R4]
LDR             R1, [R0,#0xE0]
MOV             R0, R4
POP             {R4,LR}
BX              R1
POP             {R4,PC}
