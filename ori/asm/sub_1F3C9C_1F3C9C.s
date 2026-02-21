LDR             R2, [R0,#0xC]
LDR             R1, [R0,#0x10]
CMP             R2, #0
BNE             loc_1F3CBC
TST             R1, #1
BEQ             locret_1F3CD8
CMP             R1, #0
BEQ             locret_1F3CD8
TST             R1, #1
ADD             R0, R0, R1,ASR#1
BEQ             loc_1F3CD0
LDR             R1, [R0]
LDR             R2, [R1,R2]
NOP
BX              R2
BX              LR
