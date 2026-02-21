PUSH            {R4-R6,LR}
MOVS            R4, R1
MOVS            R2, R1
MOVS            R5, R0
MOVS            R1, #0x10
BL              sub_301998
CMP             R0, #0
BEQ             loc_102F44
LDR             R1, [R5,#0x1C]
LDR             R0, [R5,#0x2C]
SUBS            R1, R4, R1
LDRB            R0, [R0,R1]
POP             {R4-R6,PC}
MOVS            R0, R4
POP             {R4-R6,PC}
