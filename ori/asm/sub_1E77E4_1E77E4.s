ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
MOV             R0, R1
LDR             R1, [R1]
LDR             R2, [R1,#0x18]
ADD             R1, R0, #0xC
BX              R2
