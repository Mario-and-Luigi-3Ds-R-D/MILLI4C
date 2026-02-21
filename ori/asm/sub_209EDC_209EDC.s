LDR             R0, [R2,#8]
LDR             R2, =byte_19CF35
CMP             R0, #0
LDR             R0, =off_6CE970
MOVNE           R1, #1
MOVEQ           R1, #0
LDR             R0, [R0]
STRB            R1, [R0,R2]
MOV             R0, #0
BX              LR
