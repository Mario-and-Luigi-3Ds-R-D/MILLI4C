PUSH            {R4-R7,LR}
MOV             R4, R0
LDR             R7, =off_6CE970
LDR             R6, =off_6CDC90
VPUSH           {D8}
SUB             SP, SP, #0x24
LDRB            R0, [R0,#0xC]
CMP             R0, #0
LDR             R0, [R7]
LDRNE           R1, =0xC001
MOVEQ           R1, #0xC000
BL              sub_52FACC
MOV             R1, R0
MOV             R2, #0
ADD             R0, R4, #0x10
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xF
ADD             R0, R4, #0x10
BL              sub_14C548
LDR             R0, [R6]
LDR             R1, =0x12700
LDR             R5, [R1,R0]
BL              sub_5C8980
ADD             R0, R4, #0x400
ADD             R0, R0, #0xC
VMOV.F32        S16, S0
VLDR            S0, [R0]
VLDR            S2, [R4,#0x3C]
VLDR            S1, =0.0
ADD             R2, SP, #0x40+var_38
VSUB.F32        S0, S0, S2
VSTR            S1, [SP,#0x40+var_38]
VSTR            S1, [SP,#0x40+var_34]
MOV             R1, #0
ADD             R0, R4, #0x1EC
VSTR            S0, [SP,#0x40+var_30]
VMOV.F32        S0, S16
BL              sub_5A2B20
LDRB            R0, [R4,#0xC]
LDR             R2, [R5,#0x248]
CMP             R0, #0
LDR             R0, [R6]
ADDEQ           R0, R0, #0x12400
ADDEQ           R0, R0, #0x2DC
ADDNE           R0, R0, #0x12400
ADDNE           R0, R0, #0x2D8
LDR             R0, [R0]
STR             R2, [SP,#0x40+var_3C]
LDR             R2, [R5,#0x24C]
VLDR            S1, [SP,#0x40+var_3C]
ADD             R1, R0, #0x10
STR             R2, [SP,#0x40+var_3C]
LDR             R0, [R5,#0x250]
VMOV            S2, R2
ADD             R2, SP, #0x40+var_2C
VMOV            S0, R0
STR             R0, [SP,#0x40+var_3C]
VLDR            S3, [R1,#0x2C]
MOV             R1, #0
VADD.F32        S0, S0, S3
VSTR            S0, [SP,#0x40+var_24]
VMOV.F32        S0, S16
VSTM            R2, {S1-S2}
LDR             R0, [R7]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x330
BL              sub_5A2074
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R7,PC}
