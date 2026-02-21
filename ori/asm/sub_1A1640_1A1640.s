PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R7, =off_6CE388
VPUSH           {D8}
SUB             SP, SP, #0x48
LDR             R0, [R7]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#4]
VLDR            S16, =0.0
VSTR            S0, [SP,#0x68+var_68]
VNEG.F32        S1, S0
VSTR            S16, [SP,#0x68+var_64]
VSTR            S16, [SP,#0x68+var_60]
LDR             R0, =dword_63F9D8
ADD             R1, SP, #0x68+var_2C
VSTR            S1, [SP,#0x68+var_5C]
VSTR            S16, [SP,#0x68+var_58]
VSTR            S16, [SP,#0x68+var_54]
VSTR            S16, [SP,#0x68+var_50]
VSTR            S16, [SP,#0x68+var_4C]
VSTR            S0, [SP,#0x68+var_48]
VSTR            S16, [SP,#0x68+var_44]
VSTR            S16, [SP,#0x68+var_40]
VSTR            S1, [SP,#0x68+var_3C]
LDR             R0, [R0]
MOV             R8, SP
STR             R0, [SP,#0x68+var_2C]
LDR             R0, [R4,#4]
LDRB            R1, [R1,R5]
STRB            R1, [R0,#0xE]
LDR             R0, =dword_63F9E4
LDR             R0, [R0]
STR             R0, [SP,#0x68+var_28]
LDR             R6, [R4,#0x10]
LDR             R0, [R7]
LDR             R0, [R0,#0x9C]
LDR             R0, [R0,#0xC]
MOV             R1, R0
LDR             R0, [R6]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R6
BLX             R3
ADD             R1, SP, #0x68+var_28
LDR             R0, [R4,#0x10]
LDRB            R1, [R1,R5]
MOV             R3, #0x100
MOV             R2, #0
BL              sub_14C548
MOV             R0, #0
STRB            R0, [R4,#0xC]
LDR             R0, [R7]
LDR             R0, [R0,#0x98]
VLDR            S17, [R0,#8]
VLDR            S0, =1.0
VSTR            S16, [SP,#0x68+var_38]
VSTR            S0, [SP,#0x68+var_34]
VSTR            S16, [SP,#0x68+var_30]
LDR             R0, [R7]
ADD             R6, SP, #0x68+var_38
LDR             R0, [R0,#0x98]
VLDR            S2, [R0]
LDR             R0, [R4,#4]
VMOV.F32        S1, S17
VMOV.F32        S0, S16
MOV             R2, R6
LDR             R0, [R0,#0x5C]
MOV             R1, #1
ADD             R0, R0, #0x1DC
BL              sub_5A28C4
LDR             R0, [R4,#4]
ADD             R1, R5, R5,LSL#1
VMOV.F32        S0, S17
ADD             R2, R8, R1,LSL#2
LDR             R0, [R0,#0x5C]
MOV             R1, #0
ADD             R0, R0, #0x1DC
BL              sub_5A2B20
MOV             R0, #1
STRB            R0, [R4,#8]
LDR             R0, [R4,#4]
LDR             R12, =off_6CE970
MOV             R3, #0
MOV             R2, #0x10000
LDR             R1, [R0,#0x5C]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R7]
BL              sub_1A2828
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8}
POP             {R4-R8,PC}
