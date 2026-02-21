CMP             R1, #0
BEQ             loc_1CF98C
LDR             R3, [R0,#4]
CMP             R3, R1
STREQ           R2, [R0,#4]
LDR             R3, [R1,#4]
CMP             R3, #0
STR             R3, [R2,#4]
STRNE           R2, [R3,#8]
STR             R1, [R2,#8]
STR             R2, [R1,#4]
B               loc_1CF9B0
LDR             R1, [R0,#8]
CMP             R1, #0
STREQ           R2, [R0,#8]
STREQ           R2, [R0,#4]
BEQ             loc_1CF9B0
STR             R2, [R1,#8]
LDR             R1, [R0,#8]
STR             R1, [R2,#4]
STR             R2, [R0,#8]
STR             R0, [R2,#0xC]
LDR             R1, [R0,#0xC]
ADD             R1, R1, #1
STR             R1, [R0,#0xC]
BX              LR
