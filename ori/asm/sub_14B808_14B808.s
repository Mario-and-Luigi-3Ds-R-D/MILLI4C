LDR             R2, [R0,#0x20]
CMP             R2, #0
LDREQ           R2, [R0,#0xE4]
CMPEQ           R2, #0
STRNE           R1, [R0,#0xEC]
BX              LR
