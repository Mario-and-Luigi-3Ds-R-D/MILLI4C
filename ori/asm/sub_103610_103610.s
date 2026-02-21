PUSH            {R0-R7,LR}
SUB             SP, SP, #4
MOVS            R0, #1
STR             R0, [SP,#0x28+var_28]
LDR             R6, [SP,#0x28+var_24]
LDR             R0, [SP,#0x28+var_20]
LDR             R1, [SP,#0x28+arg_4]
MULS            R6, R0
CMP             R6, #0
BNE             loc_103626
MOVS            R6, #1
LDR             R4, [SP,#0x28+var_1C]
ADDS            R0, R6, R4
CMP             R1, #0
BEQ             loc_103636
BLX             R1
CMP             R0, #0
BEQ             loc_10363E
B               loc_10363A
BL              sub_301570
ADDS            R5, R0, R4
B               loc_103640
MOVS            R5, #0
CMP             R5, #0
BEQ             loc_103674
LDR             R0, [SP,#0x28+var_1C]
CMP             R0, #0
BEQ             loc_103656
MOVS            R0, R5
LDR             R1, [SP,#0x28+var_20]
SUBS            R0, #0x40 ; '@'
STR             R1, [R0,#0x38]
LDR             R1, [SP,#0x28+var_24]
STR             R1, [R0,#0x3C]
LDR             R0, [SP,#0x28+var_18]
CMP             R0, #0
BEQ             loc_103674
MOVS            R4, #0
MOVS            R7, R5
B               loc_10366E
LDR             R1, [SP,#0x28+var_18]
MOVS            R0, R7
BLX             R1
LDR             R0, [SP,#0x28+var_20]
ADDS            R4, R4, #1
ADDS            R7, R7, R0
LDR             R0, [SP,#0x28+var_24]
CMP             R4, R0
BLT             loc_103662
MOVS            R0, R5
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
