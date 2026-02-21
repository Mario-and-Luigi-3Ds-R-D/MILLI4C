ADD             R3, R0, #0x14400
ADD             R2, R0, #0x15000
ADD             R1, R0, #0x15000
PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x14400
ADD             R3, R3, #0xEC
ADD             R2, R2, #0x98
ADD             R1, R1, #0x88
ADD             R0, R0, #0x174
BL              sub_50A61C
LDR             R0, [R4]
LDR             R1, [R0,#0x294]
MOV             R0, R4
POP             {R4,LR}
BX              R1
