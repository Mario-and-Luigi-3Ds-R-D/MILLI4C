PUSH            {R1-R7,LR}
MOVS            R4, R1
MOVS            R5, R3
LDR             R1, [SP,#0x20+arg_0]
SUBS            R6, R2, R4
SUBS            R1, R1, R5
CMP             R6, R1
STR             R1, [SP,#0x20+var_20]
BCS             loc_1038AC
MOVS            R1, R6
ADDS            R0, #0x10
STR             R1, [SP,#0x20+var_1C]
STR             R0, [SP,#0x20+var_18]
B               loc_1038D4
LDRB            R1, [R4]
LDR             R0, [SP,#0x20+var_18]
BL              sub_302756
MOVS            R7, R0
LDRB            R1, [R5]
LDR             R0, [SP,#0x20+var_18]
BL              sub_302756
SUBS            R0, R7, R0
BEQ             loc_1038D0
CMP             R0, #0
BLT             loc_1038E4
B               loc_1038EE
ADDS            R4, R4, #1
ADDS            R5, R5, #1
LDR             R0, [SP,#0x20+var_1C]
SUBS            R0, R0, #1
STR             R0, [SP,#0x20+var_1C]
ADDS            R0, R0, #1
BNE             loc_1038B4
LDR             R0, [SP,#0x20+var_20]
CMP             R6, R0
BCS             loc_1038EA
MOVS            R0, #0
MVNS            R0, R0
POP             {R1-R7,PC}
CMP             R0, R6
BCS             loc_1038F2
MOVS            R0, #1
POP             {R1-R7,PC}
MOVS            R0, #0
POP             {R1-R7,PC}
