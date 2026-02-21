PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R6, =off_6CDC90
MOV             R4, R0
LDR             R0, [R0,#0x20]
SUB             SP, SP, #0x10
LDR             R1, [R6]
ADD             R3, SP, #0x20+var_1C
VLDR            S2, [R0,#0x24]
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x2700
ADD             R0, R0, #0x28 ; '('
LDR             R1, [R1]
MOV             R2, #1
VLDM            R0, {S0-S1}
ADD             R1, R1, #0x1CC
VLDM            R1, {S3-S5}
MOV             R1, SP
MOV             R0, R1
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S5
VADD.F32        S0, S0, S4
VSTR            S2, [SP,#0x20+var_20]
VSTM            R3, {S0-S1}
BL              sub_14C614
LDR             R0, [R6]
LDR             R1, =0x12700
MOV             R2, SP
LDR             R1, [R1,R0]
LDR             R1, [R1,#0x1CC]
STR             R1, [SP,#0x20+var_14]
STR             R1, [SP,#0x20+var_20]
MOV             R1, #3
BL              sub_1FAD84
LDR             R0, [R4,#0x20]
MOV             R1, R5
BL              sub_1FC564
MOV             R0, #0
STRB            R0, [R4,#0x25]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
