PUSH            {R4,LR}
ADD             R1, R3, #8
LDR             R2, [R3,#0x10]
LDR             R3, [R3,#0xC]
LDR             R0, [R0,#4]
LDR             R1, [R1]
CMP             R3, #0
ADD             R0, R0, #0x14400
AND             R3, R2, #0xFF
ADD             R0, R0, #0x18
MOVNE           R2, #1
LDR             R0, [R0]
MOVEQ           R2, #0
AND             R1, R1, #0xFF
BL              sub_3D91F8
MOV             R0, #0
POP             {R4,PC}
