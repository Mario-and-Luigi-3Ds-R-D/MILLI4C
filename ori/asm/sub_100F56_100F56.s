PUSH            {R0-R2,R4-R7,LR}
SUB             SP, SP, #8
MOVS            R7, #0
LDR             R4, [SP,#0x28+var_20]
MOVS            R5, R2
LDRB            R0, [R4]
ADDS            R4, R4, #1
STR             R7, [SP,#0x28+var_24]
CMP             R0, #0x30 ; '0'
BEQ             loc_100F70
CMP             R5, #0
BEQ             loc_100F9A
B               loc_100F9C
LDRB            R0, [R4]
MOVS            R7, #1
ADDS            R4, R4, #1
CMP             R0, #0x78 ; 'x'
BEQ             loc_100F84
CMP             R0, #0x58 ; 'X'
BEQ             loc_100F84
CMP             R5, #0
BEQ             loc_100F96
B               loc_100F9C
CMP             R5, #0
BEQ             loc_100F8C
CMP             R5, #0x10
BNE             loc_100F9C
LDRB            R0, [R4]
MOVS            R7, #0
MOVS            R5, #0x10
ADDS            R4, R4, #1
B               loc_100F9C
MOVS            R5, #8
B               loc_100F9C
MOVS            R5, #0xA
MOVS            R6, #0
STR             R6, [SP,#0x28+var_28]
B               loc_100FC6
LDR             R1, [SP,#0x28+var_28]
MOVS            R7, #1
MULS            R1, R5
ADDS            R0, R1, R0
MOVS            R1, R5
LSRS            R2, R0, #0x10
MULS            R1, R6
LSLS            R0, R0, #0x10
LSRS            R0, R0, #0x10
STR             R0, [SP,#0x28+var_28]
ADDS            R6, R1, R2
LSLS            R0, R7, #0x10
CMP             R6, R0
BCC             loc_100FC2
MOVS            R0, #1
STR             R0, [SP,#0x28+var_24]
LDRB            R0, [R4]
ADDS            R4, R4, #1
MOVS            R1, R5
BL              sub_2FFB1C
CMP             R0, #0
BGE             loc_100FA2
LDR             R0, [SP,#0x28+var_1C]
CMP             R0, #0
BEQ             loc_100FE2
CMP             R7, #0
BEQ             loc_100FDE
SUBS            R4, R4, #1
B               loc_100FE0
LDR             R4, [SP,#0x28+var_20]
STR             R4, [R0]
LDR             R0, [SP,#0x28+var_24]
CMP             R0, #0
BEQ             loc_100FF6
BLX             sub_2FF1F8
MOVS            R1, #2
STR             R1, [R0]
SUBS            R0, R1, #3
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
LDR             R1, [SP,#0x28+var_28]
LSLS            R0, R6, #0x10
ORRS            R0, R1
B               loc_100FF2
