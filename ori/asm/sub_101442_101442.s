PUSH            {R4-R6,LR}
MOVS            R4, R0
MOVS            R5, R1
BLX             sub_2FEF5C
LDR             R1, [R0]
LDR             R0, [R1]
CMP             R0, #0
BEQ             loc_10146E
ADDS            R1, R1, R0
LDRB            R0, [R4]
LDRB            R3, [R5]
ADDS            R4, R4, #1
ADDS            R5, R5, #1
LDRB            R2, [R1,R0]
LDRB            R3, [R1,R3]
CMP             R0, #0
BEQ             loc_10146A
CMP             R2, R3
BEQ             loc_101456
SUBS            R0, R2, R3
POP             {R4-R6,PC}
MOVS            R1, R5
MOVS            R0, R4
BLX             sub_3000AC
POP             {R4-R6,PC}
