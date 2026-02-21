PUSH            {R4,LR}
LDR             R0, [R0,#4]
LDR             R2, [R3,#0xC]
ADD             R1, R3, #8
ADD             R0, R0, #0x14400
LDR             R1, [R1]
CMP             R2, #0
ADD             R0, R0, #0x18
MOVEQ           R2, #1
LDR             R0, [R0]
MOVNE           R2, #0
AND             R1, R1, #0xFF
BL              sub_3D922C
MOV             R0, #0
POP             {R4,PC}
