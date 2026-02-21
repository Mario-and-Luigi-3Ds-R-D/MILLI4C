LDR             R1, =off_6BBD50
LDR             R2, =off_6C0770
STR             R1, [R0],#0x10
MOV             R1, #0
STR             R2, [R0]
LDR             R3, [R0,#4]
CMP             R3, #0
STRNE           R1, [R3,#0x64]
STRNE           R1, [R0,#4]
STR             R2, [R0,#-8]!
LDR             R2, [R0,#4]
CMP             R2, #0
STRNE           R1, [R2,#0x64]
STRNE           R1, [R0,#4]
SUB             R0, R0, #8
BX              LR
