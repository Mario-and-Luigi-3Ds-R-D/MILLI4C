ADD             R1, R0, #0x38 ; '8'
LDM             R1, {R1,R2}
CMP             R2, R1
MOVNE           R3, #1
BEQ             locret_299654
LDR             R2, [R1],#0xC
STRB            R3, [R2,#4]
LDR             R2, [R0,#0x3C]
CMP             R2, R1
BNE             loc_299640
BX              LR
