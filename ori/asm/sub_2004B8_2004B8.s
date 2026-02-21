PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x110
BL              sub_4857C8
LDR             R1, [R4,#0xFC]
CMP             R1, #0
BNE             loc_2004E8
LDR             R0, [R4,#0x100]
TST             R0, #1
BEQ             locret_200508
CMP             R0, #0
BEQ             locret_200508
LDR             R0, [R4,#0x100]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_200500
LDR             R2, [R0]
LDR             R1, [R2,R1]
POP             {R4,LR}
BX              R1
POP             {R4,PC}
