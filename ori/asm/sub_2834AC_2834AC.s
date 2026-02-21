PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #5
VPUSH           {D8-D9}
SUB             SP, SP, #0x28
MOV             R5, R1
STRB            R0, [R4,#0x3F4]
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDR             R0, [R4,#0x464]
VLDR            S2, [R5]
VLDR            S3, [R5,#8]
ADD             R1, R0, #0x40 ; '@'
VLDR            S1, [R0,#0x24]
ADD             R0, R0, #0x1C
VLDR            S0, [R5,#4]
VADD.F32        S1, S3, S1
VLDM            R0, {S4-S5}
ADD             R2, SP, #0x48+var_44
ADD             R6, R4, #0x400
VLDM            R1, {S17-S18}
VADD.F32        S2, S2, S4
VADD.F32        S0, S0, S5
ADD             R6, R6, #0x64 ; 'd'
MOV             R1, SP
MOV             R0, R4
VSTR            S2, [SP,#0x48+var_48]
VSTM            R2, {S0-S1}
BL              sub_14E984
VLDR            S16, =0.0
VLDR            S0, =1.0
VSTR            S16, [SP,#0x48+var_3C]
VSTR            S0, [SP,#0x48+var_38]
VSTR            S16, [SP,#0x48+var_34]
VLDR            S0, [R4,#0x28]
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VNEG.F32        S0, S0
ADD             R2, SP, #0x48+var_3C
MOV             R1, #1
ADD             R0, R4, #0x1DC
BL              sub_5A28C4
LDR             R0, [R6]
VLDR            S1, [R4,#0x24]
VLDR            S0, [R4,#0x2C]
ADD             R2, SP, #0x48+var_30
VLDR            S3, [R0,#0xC]
VLDR            S2, [R0,#0x14]
MOV             R1, #0
VSUB.F32        S1, S3, S1
VSUB.F32        S0, S2, S0
ADD             R0, R4, #0x1DC
VSTR            S1, [SP,#0x48+var_30]
VSTR            S16, [SP,#0x48+var_2C]
VSTR            S0, [SP,#0x48+var_28]
VMOV.F32        S0, S17
BL              sub_5A2B20
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D9}
POP             {R4-R6,PC}
