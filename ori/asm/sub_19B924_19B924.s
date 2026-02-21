LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x4EC]
TST             R1, #1
BEQ             loc_19B94C
MOV             R0, #0
BX              LR
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x6C]
CMP             R0, #3
CMPNE           R0, #0
CMPNE           R0, #4
MOVEQ           R0, #1
BNE             loc_19B944
BX              LR
