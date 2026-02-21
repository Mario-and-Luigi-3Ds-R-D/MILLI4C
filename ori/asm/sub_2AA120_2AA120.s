PUSH            {R4,LR}
MOV             R4, R0
BL              sub_2AA034
CMP             R0, #0
BEQ             loc_2AA14C
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x28]
MOV             R0, R4
POP             {R4,LR}
BX              R2
LDR             R0, [R4,#0x4C]
ORR             R0, R0, #4
STR             R0, [R4,#0x4C]
POP             {R4,PC}
