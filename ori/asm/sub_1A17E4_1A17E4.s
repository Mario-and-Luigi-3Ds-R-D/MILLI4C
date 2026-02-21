PUSH            {R4-R7,LR}
MOV             R4, R0
LDR             R7, =off_6CE388
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R0, [R7]
LDR             R0, [R0,#0x98]
MOV             R5, R0
LDR             R0, [R4,#4]
LDR             R6, [R0,#0x5C]
LDR             R0, [R7]
LDR             R0, [R0,#0x9C]
LDR             R0, [R0,#0x10]
MOV             R1, R0
LDR             R0, [R6]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R6
BLX             R3
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
LDR             R0, [R0,#0x5C]
BL              sub_14C548
LDR             R0, [R4,#4]
MOV             R1, #0
VLDR            S16, =0.0
ADD             R2, SP, #0x38+var_2C
LDR             R0, [R0,#0x5C]
STRB            R1, [R0,#0xF3]
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x2E8]
LDR             R0, [R0,#0x5C]
VLDR            S1, [R0,#0x2C]
VSTR            S16, [SP,#0x38+var_2C]
VSTR            S16, [SP,#0x38+var_28]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_24]
LDR             R0, [R4,#4]
VLDR            S17, [R5,#0x2F4]
LDR             R0, [R0,#0x5C]
VMOV.F32        S0, S17
ADD             R0, R0, #0x1DC
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x38+var_38]
VSTR            S0, [SP,#0x38+var_34]
VSTR            S16, [SP,#0x38+var_30]
LDR             R0, [R4,#4]
VMOV.F32        S1, S17
MOV             R2, SP
VLDR            S2, [R5,#0x2EC]
LDR             R0, [R0,#0x5C]
VLDR            S0, [R5,#0x2F0]
MOV             R1, #1
ADD             R0, R0, #0x1DC
BL              sub_5A28C4
LDR             R0, [R4,#4]
LDR             R12, =off_6CE970
LDR             R2, =0x30751
MOV             R3, #0
LDR             R1, [R0,#0x5C]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503720
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
