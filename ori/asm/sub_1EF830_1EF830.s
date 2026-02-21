LDR             R0, [R0,#0xC4]
CMP             R1, #0
LDR             R0, [R0,#4]
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
BX              LR
