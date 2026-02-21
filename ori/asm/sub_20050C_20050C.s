PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xB6]
CMP             R0, #0
BEQ             locret_200570
LDR             R0, [R4]
LDR             R1, [R0,#0xA0]
MOV             R0, R4
BLX             R1
LDR             R1, [R4,#0xC]
CMP             R1, #0
BNE             loc_200550
LDR             R0, [R4,#0x10]
TST             R0, #1
BEQ             locret_200570
CMP             R0, #0
BEQ             locret_200570
LDR             R0, [R4,#0x10]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_200568
LDR             R2, [R0]
LDR             R1, [R2,R1]
POP             {R4,LR}
BX              R1
POP             {R4,PC}
