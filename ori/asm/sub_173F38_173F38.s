ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
MOV             R0, R1
LDR             R1, [R1]
LDR             R1, [R1,#0x6C]
BX              R1
