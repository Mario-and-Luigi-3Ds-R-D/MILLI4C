ADD             R2, R2, #8
PUSH            {R4-R6,LR}
LDM             R2, {R0,R4-R6}
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52FACC
STRB            R4, [R0,#0x31]
STRB            R5, [R0,#0x32]
STRB            R6, [R0,#0x33]
MOV             R0, #0
POP             {R4-R6,PC}
