CMP             R0, #4
MOVLE           R0, #0
SUBGT           R0, R0, #1
CMP             R1, #0
ORRNE           R0, R0, #0x800000
ORR             R0, R0, R2
BX              LR
