LDR             R2, [R0,#4]
CMP             R2, #0
BEQ             locret_129C68
LDR             R2, [R0,#4]
CMP             R1, #0
LDREX           R2, [R2]
MOV             R3, R2,LSR#24
ORRNE           R3, R3, #1
BICEQ           R3, R3, #1
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R3,LSL#24
LDR             R3, [R0,#4]
STREX           R12, R2, [R3]
CMP             R12, #0
BNE             loc_129C38
BX              LR
