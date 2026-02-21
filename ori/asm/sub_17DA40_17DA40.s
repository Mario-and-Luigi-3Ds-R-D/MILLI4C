PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R0, [R0,#4]
MOV             R5, R2
MOV             R6, R3
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R1, [R0,#0xC]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0x9C]
BL              sub_5D1F8C
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_17DA98
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
