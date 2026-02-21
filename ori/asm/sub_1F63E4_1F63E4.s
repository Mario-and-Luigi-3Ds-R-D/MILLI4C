LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
CMP             R0, R1
BNE             loc_1F6408
MOV             R1, R2
B               sub_16C788
LDR             R3, [R1,#0x5E0]
CMP             R2, #0
ADD             R2, R1, #0x5E0
BICEQ           R3, R3, #7
ORRNE           R3, R3, #7
ADD             R0, R1, #0x400
STR             R3, [R2]
LDR             R1, [R1,#0x4EC]
ADD             R0, R0, #0xEC
BICEQ           R1, R1, #1
ORRNE           R1, R1, #1
STR             R1, [R0]
BX              LR
