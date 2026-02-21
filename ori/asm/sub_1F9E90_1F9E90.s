LDRB            R1, [R0,#8]
CMP             R1, #0
BXEQ            LR
PUSH            {R4-R7,LR}
ADD             R4, R0, #0x12400
ADD             R4, R4, #0x324
SUB             SP, SP, #0x1C
LDR             R1, [R4]
ADD             R5, R0, #0x12400
ADD             R5, R5, #0x308
ADD             R1, R1, #1
STR             R1, [R4]
ADD             R1, R0, #0x12400
ADD             R1, R1, #0x378
LDR             R3, [R1,#4]
LDR             R2, [R3]
STR             R2, [R1,#4]
LDR             R2, [R1,#8]
SUB             R2, R2, #1
STR             R2, [R1,#8]
ADD             R1, R0, #0x10000
ADD             R1, R1, #0x2700
LDR             R2, [R4]
LDR             R1, [R1]
ADD             R0, R0, #0x12400
LDR             R12, [R1,#0x84]
CMP             R2, R12
BLS             loc_1F9F20
LDR             R2, [R1,#0x8C]
MOV             R12, #1
VMOV            S0, R2
STR             R2, [SP,#0x30+var_24]
VLDR            S1, [R0,#0x320]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x320]
B               loc_1F9F78
LDR             R2, [R5,#0x10]
LDR             R6, [R5,#0xC]
MOV             R12, #0
CMP             R6, R2
BEQ             loc_1F9F60
LDR             R2, [R2,#-0xC]
LDRB            R2, [R2,#4]
CMP             R2, #0
BEQ             loc_1F9F60
LDR             R2, [R1,#0x90]
VMOV            S0, R2
STR             R2, [SP,#0x30+var_24]
VLDR            S1, [R0,#0x320]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x320]
B               loc_1F9F78
LDR             R2, [R1,#0x74]
VMOV            S0, R2
STR             R2, [SP,#0x30+var_24]
VLDR            S1, [R0,#0x320]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x320]
LDR             R1, [R1,#0x180]
VLDR            S0, =0.0
LDR             R7, =off_6CDC90
STR             R1, [SP,#0x30+var_24]
STR             R1, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
LDR             R1, [R0,#0x320]
CMP             R12, #0
STR             R1, [SP,#0x30+var_28]
BEQ             loc_1FA004
MOVS            R0, R3
ADD             R6, SP, #0x30+var_24
MOVNE           R1, SP
BLNE            sub_1F8DFC
STR             R0, [SP,#0x30+var_24]
ADD             R0, R6, #4
STR             R0, [SP,#0x30+var_1C]
STR             R0, [SP,#0x30+var_20]
ADD             R1, SP, #0x30+var_24
MOV             R0, R5
BL              sub_624A04
MOV             R0, #0
STR             R0, [R4]
LDR             R1, [SP,#0x30+var_1C]
ADD             R0, SP, #0x30+var_20
CMP             R1, R0
BNE             loc_1F9FF0
LDR             R0, [SP,#0x30+var_24]
CMP             R0, #0
BNE             loc_1FA060
LDRD            R0, R1, [SP,#0x30+var_20]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
CMP             R3, #0
ADD             R4, SP, #0x30+var_24
MOVEQ           R0, #0
BEQ             loc_1FA028
VLDR            S0, [R0,#0x38C]
MOV             R2, SP
MOV             R1, #1
MOV             R0, R3
BL              sub_1F95B0
STR             R0, [SP,#0x30+var_24]
ADD             R0, R4, #4
STR             R0, [SP,#0x30+var_1C]
STR             R0, [SP,#0x30+var_20]
ADD             R1, SP, #0x30+var_24
MOV             R0, R5
BL              sub_624A04
LDR             R1, [SP,#0x30+var_1C]
ADD             R0, SP, #0x30+var_20
CMP             R1, R0
BNE             loc_1F9FF0
LDR             R0, [SP,#0x30+var_24]
CMP             R0, #0
BEQ             loc_1F9FF0
MOV             R5, R0
LDR             R0, [R7]
ADD             R4, R0, #0x12400
LDR             R0, [R5]
ADD             R4, R4, #0x378
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
LDR             R0, [R4,#4]
STR             R0, [R5]
STR             R5, [R4,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #1
STR             R0, [R4,#8]
B               loc_1F9FF0
