LDR             R2, [R0,#0xC]
LDR             R0, [R0,#0x18]
LDR             R0, [R2,R0,LSL#4]
LDR             R2, [R0,#4]
MLA             R0, R2, R1, R0
ADD             R0, R0, #8
BX              LR
