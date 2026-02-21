PUSH            {R4-R7,LR}
MOV             R6, #4
MOV             R4, R0
LDR             R12, =off_6CE970
MOV             R3, #0
VPUSH           {D8}
SUB             SP, SP, #0x1C
STRB            R6, [R0,#8]
LDR             R0, [R0,#4]
LDR             R12, [R12]
MOV             R2, #0x10000
LDR             R1, [R0,#0x5C]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503720
LDR             R7, =off_6CE388
LDR             R0, [R7]
LDR             R0, [R0,#0x98]
VLDR            S17, [R0,#0x10]
LDR             R0, [R4,#4]
ADD             R1, R4, #0x14
VLDR            S3, [R4,#0x1C]
VLDR            S16, =0.0
LDR             R0, [R0,#0x5C]
MOV             R5, SP
VLDM            R1, {S0-S1}
VLDR            S2, [R0,#0x24]
ADD             R0, R0, #0x28 ; '('
VLDM            R0, {S4-S5}
VSUB.F32        S0, S0, S2
ADD             R0, SP, #0x38+var_2C
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S3, S5
VSTM            R0, {S0-S2}
VLDR            S0, =1.0
VSTR            S16, [SP,#0x38+var_38]
VSTR            S0, [SP,#0x38+var_34]
VSTR            S16, [SP,#0x38+var_30]
LDR             R0, [R7]
LDR             R0, [R0,#0x98]
VLDR            S2, [R0]
LDR             R0, [R4,#4]
VMOV.F32        S1, S17
VMOV.F32        S0, S16
MOV             R2, R5
LDR             R0, [R0,#0x5C]
MOV             R1, #1
ADD             R0, R0, #0x1DC
BL              sub_5A28C4
LDR             R0, [R4,#4]
VMOV.F32        S0, S17
ADD             R2, SP, #0x38+var_2C
MOV             R1, #0
LDR             R0, [R0,#0x5C]
ADD             R0, R0, #0x1DC
BL              sub_5A2B20
LDR             R0, [R4,#0x10]
BL              sub_5C55B8
ADD             R0, R0, #1
AND             R1, R0, #0xFF
LDR             R0, [R4,#0x10]
MOV             R3, #0x100
MOV             R2, #0
BL              sub_14C548
MOV             R1, #3
STRB            R1, [R4,#0xC]
LDR             R0, [R4,#4]
LDRB            R2, [R0,#0xE]
CMP             R2, #1
BEQ             loc_1A1304
CMP             R2, #2
STRBEQ          R6, [R0,#0xE]
BEQ             loc_1A1308
CMP             R2, #3
MOVEQ           R1, #1
BEQ             loc_1A1304
CMP             R2, #4
MOVEQ           R1, #2
BNE             loc_1A1308
STRB            R1, [R0,#0xE]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
