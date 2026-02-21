PUSH            {R4,LR}
LDR             R0, [R2,#8]
MOV             R4, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
LDR             R0, [R0,#0x3F0]
CMP             R0, #0
BEQ             loc_20B900
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_20B904
MOV             R0, #0
LDR             R1, [R4,#0xC]
ADD             R2, R4, #0x70 ; 'p'
AND             R1, R1, #0xFF
BL              sub_3D2190
MOV             R0, #0
POP             {R4,PC}
