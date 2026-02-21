PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xB6]
CMP             R0, #0
BEQ             loc_2002AC
LDR             R0, [R4]
LDR             R1, [R0,#0x88]
MOV             R0, R4
BLX             R1
LDR             R1, [R4,#4]
CMP             R1, #0
BNE             loc_20022C
LDR             R0, [R4,#8]
TST             R0, #1
BEQ             loc_20024C
CMP             R0, #0
BEQ             loc_20024C
LDR             R0, [R4,#8]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_200244
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x9C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x7C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x120]
AND             R1, R0, #0x10
MOVS            R1, R1,LSR#4
TSTEQ           R0, #0x600
BNE             locret_2002EC
LDR             R0, [R4]
LDR             R1, [R0,#0xDC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             locret_2002EC
LDR             R0, [R4]
LDR             R1, [R0,#0x64]
MOV             R0, R4
POP             {R4,LR}
BX              R1
LDR             R1, [R4,#4]
CMP             R1, #0
BNE             loc_2002CC
LDR             R0, [R4,#8]
TST             R0, #1
BEQ             locret_2002EC
CMP             R0, #0
BEQ             locret_2002EC
LDR             R0, [R4,#8]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_2002E4
LDR             R2, [R0]
LDR             R1, [R2,R1]
POP             {R4,LR}
BX              R1
POP             {R4,PC}
