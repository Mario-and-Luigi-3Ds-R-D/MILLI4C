PUSH            {R4,LR}
MOV             R4, R0
BL              sub_1E6360
LDR             R0, [R4,#0xAA8]
CMP             R0, #0
BEQ             locret_1C7BB4
LDR             R1, [R0]
LDR             R1, [R1,#0x1C]
POP             {R4,LR}
BX              R1
POP             {R4,PC}
