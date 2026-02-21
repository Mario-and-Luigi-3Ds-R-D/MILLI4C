PUSH            {R4-R6,LR}
MOVS            R5, R0
MOVS            R4, R1
MOVS            R6, R2
B               loc_102ED2
LDRB            R2, [R4]
MOVS            R1, #8
MOVS            R0, R5
BL              sub_301998
CMP             R0, #0
BEQ             loc_102ED0
LDRB            R0, [R4]
LDR             R1, [R5,#0x24]
SUBS            R0, R0, R1
LDR             R1, [R5,#0x30]
LDRB            R0, [R1,R0]
STRB            R0, [R4]
ADDS            R4, R4, #1
CMP             R4, R6
BCC             loc_102EB6
MOVS            R0, R4
POP             {R4-R6,PC}
