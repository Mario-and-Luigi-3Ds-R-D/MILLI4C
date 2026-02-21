AND             R1, R1, #1
CMP             R1, #0
LDRNE           R1, [R0,#0xC]
LDREQ           R1, [R0]
STR             R1, [R2]
LDRNE           R1, [R0,#0x10]
LDREQ           R1, [R0,#4]
STR             R1, [R2,#4]
LDRNE           R0, [R0,#0x14]
LDREQ           R0, [R0,#8]
STR             R0, [R2,#8]
MOV             R0, R2
BX              LR
