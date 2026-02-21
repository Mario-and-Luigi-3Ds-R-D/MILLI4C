LDR             R2, [R0,#4]
CMP             R2, #0
MOVNE           R3, #1
MOVEQ           R3, #0
BLE             loc_140110
CMP             R1, #1
MOVLT           R1, #1
CMP             R2, R1
MOVLT           R1, R2
SUBS            R2, R2, R1
STR             R2, [R0,#4]
LDREQ           R1, [R0,#0xC]
BEQ             loc_14010C
LDR             R12, [R0,#0x10]
LDR             R2, [R0,#8]
MLA             R1, R12, R1, R2
STR             R1, [R0,#8]
MOV             R0, R3
BX              LR
