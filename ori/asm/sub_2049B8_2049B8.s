LDR             R0, =off_6CE970
PUSH            {R4,LR}
LDR             R1, [R2,#8]
LDR             R0, [R0]
CMP             R1, #0
BEQ             loc_2049D8
BL              sub_52FB70
B               loc_2049E0
NOP
BL              sub_528C8C
MOV             R0, #0
POP             {R4,PC}
