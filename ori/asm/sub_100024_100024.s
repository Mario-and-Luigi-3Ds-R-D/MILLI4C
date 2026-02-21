LDR             R0, =flt_6E14A8
LDR             R1, =0x71211C
MOV             R2, #0
CMP             R0, R1
STRCC           R2, [R0],#4
BCC             loc_100030
BX              LR
