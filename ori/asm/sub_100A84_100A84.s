PUSH            {R0-R2,R4-R7,LR}
MOVS            R7, R1
MOVS            R6, #0
LDR             R4, [SP,#0x20+var_20]
LDRB            R5, [R4]
ADDS            R4, R4, #1
CMP             R5, #0
BEQ             loc_100AA0
BLX             sub_2FE5A4
LDR             R0, [R0]
LDRB            R0, [R0,R5]
LSLS            R0, R0, #0x1F
BNE             loc_100A8C
CMP             R5, #0x2B ; '+'
BEQ             loc_100AAA
CMP             R5, #0x2D ; '-'
BEQ             loc_100ADA
SUBS            R4, R4, #1
LDR             R2, [SP,#0x20+var_18]
MOVS            R1, R7
MOVS            R0, R4
BL              sub_100F56
CMP             R7, #0
BEQ             loc_100AC2
LDR             R1, [R7]
CMP             R1, R4
BNE             loc_100AC2
LDR             R1, [SP,#0x20+var_20]
STR             R1, [R7]
LSLS            R1, R6, #0x15
MOVS            R4, #2
CMP             R1, #0
BGE             loc_100AE2
NEGS            R0, R0
CMP             R0, #0
BLE             locret_100AD8
BLX             sub_2FF1F8
STR             R4, [R0]
LSLS            R0, R4, #0x1E
POP             {R1-R7,PC}
MOVS            R0, #0x400
ORRS            R6, R0
B               loc_100AAA
CMP             R0, #0
BGE             locret_100AD8
BLX             sub_2FF1F8
STR             R4, [R0]
LDR             R0, =0x7FFFFFFF
POP             {R1-R7,PC}
