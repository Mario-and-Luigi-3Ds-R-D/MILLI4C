LDR             R2, [R0,#4]
CMP             R2, #0
STRNE           R1, [R2,#4]
LDRNE           R2, [R0,#4]
STRNE           R2, [R1,#8]
STREQ           R1, [R0,#8]
STR             R1, [R0,#4]
STR             R0, [R1,#0xC]
LDR             R1, [R0,#0xC]
ADD             R1, R1, #1
STR             R1, [R0,#0xC]
BX              LR
