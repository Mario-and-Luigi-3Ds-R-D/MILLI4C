MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
LDR             R3, [R0]
MOV             R1, R2
LDR             R3, [R3,#0x310]
BX              R3
