PUSH            {R4,LR}
MOV             R4, R0
BL              sub_2CE960
ADD             R0, R4, #0x1BC
POP             {R4,LR}
NOP
LDR             R2, [R0,#0x38]
LDR             R1, [R0,#0x3C]
CMP             R2, #0
BNE             loc_2329A4
TST             R1, #1
BEQ             locret_2329C0
CMP             R1, #0
BEQ             locret_2329C0
TST             R1, #1
ADD             R0, R0, R1,ASR#1
BEQ             loc_2329B8
LDR             R1, [R0]
LDR             R2, [R1,R2]
NOP
BX              R2
BX              LR
