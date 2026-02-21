ADD             R2, R2, #8
PUSH            {R4-R6,LR}
LDM             R2, {R0,R4,R5}
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F368
LDR             R2, =0x484
MOV             R1, #1
STRH            R4, [R2,R0]
STRB            R5, [R0,#0x486]
STRB            R1, [R0,#0x487]
MOV             R0, #0
POP             {R4-R6,PC}
