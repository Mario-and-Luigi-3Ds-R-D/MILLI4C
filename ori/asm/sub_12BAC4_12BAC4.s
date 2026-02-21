PUSH            {R4-R6,LR}
MOVS            R4, R0
MOV             R5, R1
MOV             R6, R2
BEQ             loc_12BB50
BL              sub_1361C8
CMP             R0, #0
BEQ             loc_12BB50
LDR             R0, [R4]
TST             R0, #0x30000
BEQ             loc_12BB50
LDR             R0, [R4]
TST             R0, #0x200
BNE             loc_12BB18
LDRSB           R1, [R4,#0x22]
CMP             R1, R5
BGE             loc_12BB18
TST             R0, #1
ADDNE           R4, R4, #0x70 ; 'p'
ADD             R4, R4, #0x70 ; 'p'
B               loc_12BAF0
LDRSB           R1, [R4,#0x22]
LDR             R0, [R4]
TST             R0, #0x200
BNE             loc_12BB50
LDRB            R2, [R4,#0x23]
CMP             R2, R6
BGE             loc_12BB50
LDRSB           R2, [R4,#0x22]
CMP             R2, R1
BNE             loc_12BB50
TST             R0, #1
ADDNE           R4, R4, #0x70 ; 'p'
ADD             R4, R4, #0x70 ; 'p'
B               loc_12BB1C
MOV             R0, R4
POP             {R4-R6,PC}
