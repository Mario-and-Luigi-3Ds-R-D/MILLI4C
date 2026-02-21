LDR             R2, [R0,#0x14]
CMN             R2, #1
BEQ             loc_145490
LDR             R0, [R0,#0xC]
LDR             R0, [R0,R2,LSL#4]
LDR             R2, [R0]
CMP             R2, R1
BGT             loc_145498
MOV             R0, #0
BX              LR
MOV             R2, #4
ADD             R1, R2, R1,LSL#2
LDR             R1, [R0,R1]
ADD             R0, R0, R1
BX              LR
