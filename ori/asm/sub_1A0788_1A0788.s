LDR             R1, =off_6BB488
STR             R1, [R0],#0x14
LDR             R1, =off_6C0770
STR             R1, [R0]
LDR             R2, [R0,#4]
MOV             R1, #0
CMP             R2, #0
STRNE           R1, [R2,#0x64]
LDR             R2, =off_6C075C
STRNE           R1, [R0,#4]
STR             R2, [R0,#-8]!
LDR             R2, [R0,#4]
CMP             R2, #0
STRNE           R1, [R2,#0x184]
STRNE           R1, [R0,#4]
SUB             R0, R0, #0xC
B               sub_300FD4
