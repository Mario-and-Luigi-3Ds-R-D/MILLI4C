LDR             R1, [R0,#0x10]
CMP             R1, #0
LDREQ           R1, [R0,#8]
CMPEQ           R1, #0
LDREQ           R0, [R0,#0x20]
CMPEQ           R0, #0
MOVNE           R0, #1
BX              LR
