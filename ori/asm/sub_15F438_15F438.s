MOV             R2, R0
CMP             R1, #1
MOV             R0, R1
BNE             loc_15F454
LDR             R1, [R2,#0x4EC]
TST             R1, #8
MOVNE           R0, #5
LDR             R1, =0x468
LDRH            R1, [R1,R2]
CMP             R1, #0x10
LDREQ           R0, =0x2674
LDRHEQ          R0, [R0,R2]
BX              LR
