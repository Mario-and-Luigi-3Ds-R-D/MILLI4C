PUSH            {R4,LR}
LDR             R0, [R0,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R1, [R0,#0xC]
LDR             R0, =off_6D1648
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
LDR             R0, [R0,#0x9C]
BL              sub_3215BC
MOV             R0, #0
POP             {R4,PC}
