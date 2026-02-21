PUSH            {R4,LR}
LDR             R1, [R0,#0xC]
MOV             R4, R0
LDR             R0, [R0,#0x10]
CMP             R1, #0
BNE             loc_21B4C0
TST             R0, #1
BEQ             loc_21B504
CMP             R0, #0
BEQ             loc_21B504
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_21B4D4
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#0xC]
CMP             R0, #0
BNE             loc_21B4FC
LDR             R0, [R4,#0x10]
TST             R0, #1
BEQ             loc_21B504
CMP             R0, #0
BEQ             loc_21B504
MOV             R0, #1
POP             {R4,PC}
MOV             R0, #0
POP             {R4,PC}
