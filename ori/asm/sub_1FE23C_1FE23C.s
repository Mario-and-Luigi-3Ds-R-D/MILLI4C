PUSH            {R4-R7,LR}
SUB             SP, SP, #0x1C
MOV             R6, #1
MOV             R1, #0
STRB            R6, [R0,#0xD]
MOV             R4, R0
STRB            R1, [R0,#0xE]
STRB            R1, [R0,#0x404]!
MOV             R2, R1
STR             R6, [R0,#4]
MOV             R3, #0x100
MOV             R1, R6
ADD             R0, R4, #0x10
BL              sub_14C548
LDR             R7, =off_6CDC90
LDR             R1, =0x12700
LDRB            R2, [R4,#0xC]
VLDR            S2, [R4,#0x34]
LDR             R0, [R7]
CMP             R2, #0
VLDR            S1, [R4,#0x3C]
VLDR            S0, [R4,#0x38]
LDR             R1, [R1,R0]
ADDEQ           R5, R0, #0x12400
ADDEQ           R5, R5, #0x398
ADDEQ           R1, R1, #0x2B4
ADDNE           R1, R1, #0x2C0
ADD             R2, SP, #0x30+var_20
VLDM            R1!, {S5}
ADDNE           R5, R0, #0x12800
VLDM            R1, {S3-S4}
ADDNE           R5, R5, #0x38C
VADD.F32        S2, S2, S5
MOV             R0, R5
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VSTR            S2, [SP,#0x30+var_24]
VSTM            R2, {S0-S1}
LDR             R1, [R5]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x30+var_24
BLX             R2
MOV             R0, #0xFFFFFF00
STRB            R6, [R5,#0xF2]
REV             R0, R0
ADD             R6, R5, #0x32C
STR             R0, [SP,#0x30+var_28]
MOV             R0, R6
BL              sub_4E63E0
LDR             R0, [SP,#0x30+var_28]
ADD             R1, SP, #0x30+var_28
VLDR            S0, =4.0
STR             R0, [R6,#4]
STR             R0, [R6]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x30+var_28]
ADD             R0, R5, #0x32C
BL              sub_4E665C
LDR             R0, [R7]
VLDR            S0, =0.0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R0, [R0]
LDR             R0, [R0,#0x23C]
STR             R0, [SP,#0x30+var_30]
VSTR            S0, [R4,#0x3AC]
STR             R0, [R4,#0x3B0]
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
