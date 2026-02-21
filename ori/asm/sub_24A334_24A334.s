MOV             R12, #1
PUSH            {R3,LR}
STRB            R12, [R0,#0x1D]
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R1
MOV             R1, #0x22 ; '"'
LDR             R0, [R0]
STR             R3, [SP,#8+var_8]
MOV             R3, R12
BL              sub_52AEA8
POP             {R3,PC}
