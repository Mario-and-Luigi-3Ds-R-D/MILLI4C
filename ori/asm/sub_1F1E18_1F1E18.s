ADD             R12, R0, #0x44 ; 'D'
CMP             R3, #0
STM             R12, {R1,R2}
BEQ             locret_1F1E5C
CMP             R1, #0
BNE             loc_1F1E40
TST             R2, #1
BEQ             locret_1F1E5C
CMP             R2, #0
BEQ             locret_1F1E5C
TST             R2, #1
ADD             R0, R0, R2,ASR#1
BEQ             loc_1F1E54
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BX              R1
BX              LR
