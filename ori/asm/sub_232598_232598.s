LDR             R1, [R0,#4]
ADD             R0, R0, #0x1BC
LDR             R1, [R1,#4]
ADD             R1, R1, #0x13800
ADD             R1, R1, #0x374
NOP
LDR             R3, [R0,#0x40]
CMP             R3, #0
BEQ             locret_2325D0
LDR             R12, [R0]
MOV             R2, R1
ADD             R1, R3, #0x20 ; ' '
LDR             R12, [R12,#0xC]
BX              R12
BX              LR
