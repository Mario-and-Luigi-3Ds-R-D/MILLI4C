LDR             R0, [R0,#0x120]
TST             R0, #1
BEQ             loc_2006A8
TST             R0, #4
MOVEQ           R0, #1
BEQ             locret_2006AC
MOV             R0, #0
BX              LR
