PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R4, R0
MOV             R1, R0
MOV             R0, R5
BL              sub_14C98C
LDR             R0, [R4,#0x198]
CMP             R0, R5
BNE             locret_149C0C
MOV             R0, #0
STR             R0, [R4,#0x198]
STR             R0, [R4,#0x10]
POP             {R4-R6,PC}
