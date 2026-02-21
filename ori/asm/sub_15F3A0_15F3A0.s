CMP             R1, #0
LDR             R1, [R0,#0x5E0]
LDR             R3, [R0,#0x4EC]
ADD             R2, R0, #0x400
ADD             R0, R0, #0x5E0
ORRNE           R1, R1, #7
ADD             R2, R2, #0xEC
ORRNE           R3, R3, #1
BICEQ           R1, R1, #7
BICEQ           R3, R3, #1
STR             R1, [R0]
STR             R3, [R2]
BX              LR
