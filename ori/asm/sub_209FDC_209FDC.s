PUSH            {R4,LR}
LDR             R0, [R2,#0x10]
LDR             R1, [R2,#0xC]
VLDR            S0, [R2,#0x68]
AND             R2, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58E57C
MOV             R0, #0
POP             {R4,PC}
