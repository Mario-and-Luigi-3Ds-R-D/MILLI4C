PUSH            {R4,LR}
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F538
MOV             R1, #0
STRB            R1, [R0,#0x4B1]
MOV             R0, R1
POP             {R4,PC}
