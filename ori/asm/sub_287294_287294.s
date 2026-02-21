PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x20]
LDR             R4, [R5,#0x1C]
CMP             R0, R4
BEQ             locret_2872C4
LDR             R0, [R4]
BL              sub_2837F8
LDR             R0, [R5,#0x20]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_2872AC
POP             {R4-R6,PC}
