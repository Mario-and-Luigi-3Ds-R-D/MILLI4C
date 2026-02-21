PUSH            {R4-R8,LR}
ADD             R1, R2, #8
LDR             R0, [R2,#0x14]
LDR             R3, [R2,#0x10]
LDR             R2, [R2,#0x18]
LDM             R1, {R1,R12}
SXTH            R6, R0
LDR             R0, =off_6CE970
CMP             R2, #0
UXTH            R1, R1
UXTH            R5, R3
LDR             R0, [R0]
AND             R4, R12, #0xFF
MOVNE           R7, #1
MOVEQ           R7, #0
BL              sub_52F538
ADD             R1, R0, #0x500
STRB            R4, [R0,#0x5D9]
STRH            R5, [R1,#0xDC]
STRH            R6, [R1,#0xDE]
STRB            R7, [R0,#0x5DA]
MOV             R0, #0
POP             {R4-R8,PC}
