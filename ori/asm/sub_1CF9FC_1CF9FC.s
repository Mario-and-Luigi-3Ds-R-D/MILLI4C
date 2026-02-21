LDR             R2, [R0,#8]
CMP             R2, #0
STREQ           R1, [R0,#8]
STREQ           R1, [R0,#4]
BEQ             loc_1CFA20
STR             R1, [R2,#8]
LDR             R2, [R0,#8]
STR             R2, [R1,#4]
STR             R1, [R0,#8]
STR             R0, [R1,#0xC]
LDR             R1, [R0,#0xC]
ADD             R1, R1, #1
STR             R1, [R0,#0xC]
BX              LR
