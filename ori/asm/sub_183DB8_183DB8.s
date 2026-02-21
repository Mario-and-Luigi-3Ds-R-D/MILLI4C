PUSH            {R4,LR}
LDR             R0, [R0,#4]
MOV             R12, R1
MOV             R1, R2
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x2C4
MOV             R2, R3
LDRH            R0, [R0,#0xC]
CMP             R0, #0
BEQ             locret_183DEC
MOV             R0, R12
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
