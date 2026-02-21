PUSH            {R4-R6,LR}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
LDRD            R4, R5, [R2,#0x70]
CMP             R0, #0
LDR             R0, =off_6CE970
UXTH            R1, R1
MOVNE           R6, #1
MOVEQ           R6, #0
LDR             R0, [R0]
BL              sub_52F368
VLDR            S0, =0.0
STRB            R6, [R0,#0xBA8]
VMOV            R1, S0
STR             R4, [R0,#0xBAC]!
ADD             R0, R0, #4
STM             R0, {R1,R5}
MOV             R0, #0
POP             {R4-R6,PC}
