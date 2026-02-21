PUSH            {R4,LR}
LDR             R1, [R2,#8]
LDR             R2, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, [R2]
SUB             R0, R2, R0
BL              sub_5035A0
MOV             R0, #0
POP             {R4,PC}
