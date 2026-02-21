MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
CMP             R0, #0
ADDNE           R0, R0, #0xE0
MOV             R12, R2
LDR             R2, [R0]
LDR             R3, [R2,#0xC]
LDR             R2, [R1,#0x170]
MOV             R1, R12
BX              R3
