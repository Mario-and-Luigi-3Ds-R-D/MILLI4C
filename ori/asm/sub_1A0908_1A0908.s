PUSH            {R4-R7,LR}
MOV             R6, #0
MOV             R4, R0
LDR             R5, =off_6CE970
LDR             R7, =off_6CE388
VPUSH           {D8}
SUB             SP, SP, #0x1C
STRB            R6, [R0,#8]
LDR             R0, [R5]
ADD             R3, SP, #0x38+var_34
ADD             R2, R0, #0x100000
ADD             R2, R2, #0xD400
ADD             R2, R2, #0xF4
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, [R7]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x2DC]
LDR             R2, =0x3074F
MOV             R3, #0
STR             R0, [SP,#0x38+var_30]
LDR             R0, [R4,#4]
LDR             R12, [R5]
LDR             R1, [R0,#0x5C]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503720
STR             R6, [SP,#0x38+var_38]
LDR             R0, [R5]
LDR             R12, =0x10D4D8
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R0, R12; loc_10D4D8
BL              sub_4E3CA0
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x38+var_34
BLX             R2
VLDR            S0, =0.0
VLDR            S16, =1.0
VSTR            S0, [SP,#0x38+var_28]
VSTR            S16, [SP,#0x38+var_24]
VSTR            S0, [SP,#0x38+var_20]
LDR             R0, [R7]
ADD             R5, SP, #0x38+var_28
LDR             R0, [R0,#0x98]
VLDR            S1, [R0,#0x2E0]
LDR             R0, [R4,#4]
VLDR            S0, [SP,#0x38+var_30]
VMOV.F32        S2, S16
MOV             R1, R5
LDR             R0, [R0,#0x5C]
VNEG.F32        S0, S0
ADD             R0, R0, #0x1DC
BL              sub_5A3264
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x25 ; '%'
LDR             R0, [R0,#0x5C]
BL              sub_14C548
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
STRB            R6, [R0,#0xF3]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
