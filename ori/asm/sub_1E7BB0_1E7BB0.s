MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
STR             R2, [R1,#0x170]
LDR             R1, [R0]
LDR             R1, [R1,#0x314]
BX              R1
