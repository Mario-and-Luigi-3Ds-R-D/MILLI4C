LDR             R0, [R0,#4]
CMP             R0, #0
MOVNE           R2, #0
BEQ             locret_1CFAEC
ADD             R1, R0, #8
LDM             R1, {R1,R3}
CMP             R3, #0
BEQ             loc_1CFAE4
LDR             R3, [R0,#4]
CMP             R3, #0
STRNE           R1, [R3,#8]
LDR             R3, [R0,#8]
CMP             R3, #0
LDRNE           R12, [R0,#4]
STRNE           R12, [R3,#4]
LDR             R3, [R0,#0xC]
LDR             R12, [R3,#4]
CMP             R12, R0
LDREQ           R12, [R0,#8]
STREQ           R12, [R3,#4]
LDR             R3, [R0,#0xC]
LDR             R12, [R3,#8]
CMP             R12, R0
LDREQ           R12, [R0,#4]
STREQ           R12, [R3,#8]
LDR             R3, [R0,#0xC]
LDR             R12, [R3,#0xC]
SUB             R12, R12, #1
STR             R12, [R3,#0xC]
STR             R2, [R0,#8]
STR             R2, [R0,#4]
STR             R2, [R0,#0xC]
MOVS            R0, R1
BNE             loc_1CFA74
BX              LR
