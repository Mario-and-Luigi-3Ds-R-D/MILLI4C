PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x14]
MOV             R5, R1
SUB             SP, SP, #0x10
LDR             R1, [R0,#0x3F4]
CMP             R1, #0
LDRBNE          R2, [R0,#0x3F8]
CMPNE           R2, #4
BEQ             loc_1F8D18
LDR             R6, =off_6CDC90
CMP             R1, #1
LDR             R1, [R6]
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x2700
LDR             R1, [R1]
BEQ             loc_1F8CA4
ADD             R1, R1, #0x1D8
VLDR            S2, [R0,#0x24]
ADD             R0, R0, #0x28 ; '('
VLDM            R1, {S3-S5}
ADD             R3, SP, #0x20+var_18
ADD             R1, SP, #0x20+var_1C
VLDM            R0, {S0-S1}
VADD.F32        S2, S2, S3
MOV             R2, #1
MOV             R0, R1
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S5
VSTR            S2, [SP,#0x20+var_1C]
VSTM            R3, {S0-S1}
BL              sub_14C614
LDR             R0, [R6]
LDR             R1, =0x12700
ADD             R2, SP, #0x20+var_1C
LDR             R1, [R1,R0]
LDR             R1, [R1,#0x1D8]
STR             R1, [SP,#0x20+var_20]
STR             R1, [SP,#0x20+var_1C]
MOV             R1, #3
BL              sub_1FAD84
LDR             R0, [R4,#0x14]
ADD             SP, SP, #0x10
MOV             R1, R5
POP             {R4-R6,LR}
B               sub_1FC324
ADD             R1, R1, #0x1E4
VLDR            S2, [R0,#0x24]
ADD             R0, R0, #0x28 ; '('
VLDM            R1, {S3-S5}
ADD             R3, SP, #0x20+var_18
ADD             R1, SP, #0x20+var_1C
VLDM            R0, {S0-S1}
VADD.F32        S2, S2, S3
MOV             R2, #1
MOV             R0, R1
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S5
VSTR            S2, [SP,#0x20+var_1C]
VSTM            R3, {S0-S1}
BL              sub_14C614
LDR             R0, [R6]
LDR             R1, =0x12700
ADD             R2, SP, #0x20+var_1C
LDR             R1, [R1,R0]
LDR             R1, [R1,#0x1E4]
STR             R1, [SP,#0x20+var_20]
STR             R1, [SP,#0x20+var_1C]
MOV             R1, #0
STRB            R1, [R4,#0x19]
MOV             R1, #0x14
BL              sub_1FA520
NOP
NOP
B               loc_1F8C90
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
