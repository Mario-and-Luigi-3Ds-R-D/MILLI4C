ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0,R2}
AND             R4, R2, #0xFF
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F368
MOV             R1, R4
BL              sub_4E4D10
MOV             R0, #0
POP             {R4,PC}
