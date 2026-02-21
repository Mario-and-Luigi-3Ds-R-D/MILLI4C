PUSH            {R4,LR}
LDR             R0, [R2,#8]
LDR             R2, =off_6CE970
AND             R1, R0, #0xFF
LDR             R0, =0xFFE683CC
LDR             R2, [R2]
SUB             R0, R2, R0
BL              sub_503508
CMP             R0, #0
BEQ             locret_2089E8
BL              sub_1581D8
MOV             R0, #0
POP             {R4,PC}
