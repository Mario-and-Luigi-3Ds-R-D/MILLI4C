ADD             R1, R0, #0x2BC
LDM             R1, {R1,R2}
TST             R2, #1
ADD             R0, R0, R2,ASR#1
BEQ             loc_2ADA50
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BX              R1
