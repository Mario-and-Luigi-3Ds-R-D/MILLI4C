LDR             R2, =dword_64E930
LDR             R3, [R0,#4]
CMP             R3, #0
LDREQ           R3, [R2]
LDREQ           R2, [R2,#(off_64E934 - 0x64E930)]
LDRNE           R3, [R2,#8]
LDRNE           R2, [R2,#0xC]
CMP             R3, #0
BNE             loc_14A08C
TST             R2, #1
BEQ             locret_14A094
CMP             R2, #0
BEQ             locret_14A094
LDR             R0, [R0,#4]
B               sub_547A90
BX              LR
