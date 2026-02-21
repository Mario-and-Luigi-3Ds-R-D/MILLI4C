ADD             R12, R0, #0x38 ; '8'
CMP             R3, #0
STM             R12, {R1,R2}
BEQ             locret_232B78
CMP             R1, #0
BNE             loc_232B5C
TST             R2, #1
BEQ             locret_232B78
CMP             R2, #0
BEQ             locret_232B78
TST             R2, #1
ADD             R0, R0, R2,ASR#1
BEQ             loc_232B70
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BX              R1
BX              LR
