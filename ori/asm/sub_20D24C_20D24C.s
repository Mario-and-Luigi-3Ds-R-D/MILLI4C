ADD             R0, R2, #8
PUSH            {R4-R6,LR}
LDM             R0, {R0,R4}
LDR             R5, [R2,#0x10]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
AND             R1, R4, #0xFF
MOV             R2, R5
BL              sub_50002C
MOV             R0, #0
POP             {R4-R6,PC}
