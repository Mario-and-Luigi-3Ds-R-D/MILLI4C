LDR             R1, =off_6BBD50
LDR             R3, =off_6C0770
MOV             R2, #0
STR             R1, [R0]
STR             R3, [R0,#0x10]
LDR             R12, [R0,#0x14]
ADD             R1, R0, #0x10
CMP             R12, #0
STRNE           R2, [R12,#0x64]
STRNE           R2, [R1,#4]
STR             R3, [R0,#8]
LDR             R3, [R0,#0xC]
ADD             R1, R0, #8
CMP             R3, #0
STRNE           R2, [R3,#0x64]
STRNE           R2, [R1,#4]
B               sub_300FD4
