ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0,R2}
AND             R1, R0, #0xFF
LDR             R0, =off_6CE970
SXTB            R2, R2
LDR             R0, [R0]
BL              sub_52B6A8
MOV             R0, #0
POP             {R4,PC}
