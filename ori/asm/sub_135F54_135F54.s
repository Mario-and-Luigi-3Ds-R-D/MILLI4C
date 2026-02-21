LDR             R1, [R0,#8]
CMP             R1, #0
LDREQ           R1, [R0,#0x20]
CMPEQ           R1, #0
BNE             loc_135F78
LDR             R0, [R0,#0x10]
CMP             R0, #0
MOVEQ           R0, #1
BEQ             locret_135F7C
MOV             R0, #0
BX              LR
