ADD             R12, R0, #0xC
CMP             R3, #0
STM             R12, {R1,R2}
BEQ             locret_1F3AF8
CMP             R1, #0
BNE             loc_1F3ADC
TST             R2, #1
BEQ             locret_1F3AF8
CMP             R2, #0
BEQ             locret_1F3AF8
TST             R2, #1
ADD             R0, R0, R2,ASR#1
BEQ             loc_1F3AF0
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BX              R1
BX              LR
