PUSH            {R4,LR}
MOV             R4, R0
ADD             R1, R0, #0x20 ; ' '
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
LDR             R2, =0x300F8
MOV             R3, #0
LDR             R0, [R0]
SUB             R0, R0, R12
BL              sub_503720
MOV             R0, #1
STRB            R0, [R4,#0x418]
POP             {R4,PC}
