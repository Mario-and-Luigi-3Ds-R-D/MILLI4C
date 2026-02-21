ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
LDR             R3, [R0]
MOV             R2, #0x178
LDRH            R2, [R2,R1]
LDR             R3, [R3,#0x278]
LDR             R1, [R1,#0x16C]
BX              R3
