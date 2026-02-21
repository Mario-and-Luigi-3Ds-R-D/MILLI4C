PUSH            {R4,LR}
LDR             R0, [R0,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R2, [R0,#0xC]
LDR             R0, =off_6D1648
MOV             R1, #0
LDR             R0, [R0]
LDR             R0, [R0,#0x9C]
BL              sub_3215F0
MOV             R0, #0
POP             {R4,PC}
