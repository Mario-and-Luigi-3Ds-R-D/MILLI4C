PUSH            {R4,LR}
LDR             R1, [R0,#0xC]
MOV             R4, R0
LDR             R0, [R0,#0x10]
MOV             R2, #0
CMP             R1, #0
STRB            R2, [R4,#0x3A]
BNE             loc_1579A4
TST             R0, #1
BEQ             loc_1579E8
CMP             R0, #0
BEQ             loc_1579E8
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_1579B8
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#0xC]
CMP             R0, #0
BNE             loc_1579E0
LDR             R0, [R4,#0x10]
TST             R0, #1
BEQ             loc_1579E8
CMP             R0, #0
BEQ             loc_1579E8
MOV             R0, #1
POP             {R4,PC}
MOV             R0, #0
POP             {R4,PC}
