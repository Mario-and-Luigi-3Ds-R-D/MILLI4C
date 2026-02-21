PUSH            {R4-R10,LR}
MOV             R7, R0
VPUSH           {D8}
SUB             SP, SP, #0x30
BL              sub_27D3FC
MOV             R1, #0
MOV             R2, #0x3F800000
STR             R1, [SP,#0x58+var_54]
STR             R2, [SP,#0x58+var_58]
STR             R1, [SP,#0x58+var_50]
LDR             R3, [R7,#0x4C4]
ADD             R4, SP, #0x58+var_48
ADD             R0, R7, #0x400
STR             R3, [SP,#0x58+var_4C]
STM             R4, {R1,R2}
ADD             R4, SP, #0x58+var_34
STR             R1, [SP,#0x58+var_40]
LDR             R3, [R7,#0x4C8]
STR             R1, [SP,#0x58+var_38]
ADD             R0, R0, #0xC4
STR             R3, [SP,#0x58+var_3C]
STM             R4, {R1,R2}
ADD             R9, R7, #0x400
LDR             R0, [R0,#8]
VLDR            S2, =1.0
VLDR            S16, =0.0
STR             R0, [SP,#0x58+var_2C]
LDR             R0, =off_6CDF98
VLDR            S1, [R9,#0x304]
VLDR            S0, [R9,#4]
ADD             R5, R7, #0x5D0
LDR             R0, [R0]
VMUL.F32        S1, S0, S1
VSUB.F32        S0, S2, S0
MOV             R10, SP
LDR             R0, [R0,#0x124]
MOV             R6, R5
MOV             R8, #4
MOV             R4, #0
VLDR            S2, [R0,#0x2DC]
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x58+var_44]
LDR             R0, [R7,#0x700]
STR             R0, [SP,#0x58+var_58]
MOV             R2, R6
MOV             R1, R10
MOV             R0, R5
BL              sub_1169FC
ADD             R4, R4, #1
CMP             R4, R8
ADD             R6, R6, #0xC
ADD             R5, R5, #0xC
BLT             loc_27D7EC
ADD             R0, R7, #0x5D0
VLDR            S3, [R9,#0x70]
VLDR            S0, [R0]
ADD             R0, R7, #0x400
ADD             R0, R0, #0x1E8
VMOV.F32        S1, S0
VLDR            S2, [R0]
ADD             R1, R7, #0x5D0
VSUB.F32        S4, S2, S1
VMLA.F32        S1, S4, S3
VMOV.F32        S3, S0
VLDR            S4, [R9,#0x74]
VSUB.F32        S2, S2, S3
VSTR            S1, [R1]
ADD             R1, R7, #0x400
ADD             R1, R1, #0x1DC
VSTR            S1, [R1]
VMLA.F32        S0, S2, S4
VSTR            S0, [R0]
ADD             R0, R7, #0x400
ADD             R0, R0, #0x1F4
VSTR            S0, [R0]
VSTR            S16, [R7,#0x3FC]
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8}
POP             {R4-R10,PC}
