LDR             R0, [R0,#8]
LDRSH           R0, [R0]
CMP             R0, #4
BEQ             loc_23DF4C
BGT             loc_23DF34
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_23DF4C
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_23DF4C
MOV             R0, #0
BX              LR
CMP             R0, #0x11
CMPNE           R0, #0x12
BEQ             loc_23DF4C
CMP             R0, #0x13
CMPNE           R0, #0x14
BNE             loc_23DF2C
MOV             R0, #1
BX              LR
