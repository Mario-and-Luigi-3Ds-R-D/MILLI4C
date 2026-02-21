PUSH            {R4-R6,LR}
MOV             R1, R2
MOV             R5, R0
VPUSH           {D8-D9}
ADD             R4, R3, #8
SUB             SP, SP, #0x28
LDR             R2, [R0]
LDR             R0, [R3,#8]
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R5,#4]
MOV             R0, R5
BLX             R12
MOV             R6, R0
ADD             R0, R4, #0xC
VLDR            S2, [R4,#8]
VLDM            R0, {S0-S1}
VCVT.F32.S32    S2, S2
ADD             R0, SP, #0x48+var_2C
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSTR            S2, [SP,#0x48+var_30]
VSTM            R0, {S0-S1}
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #4
BEQ             loc_183118
LDR             R0, [R4,#4]
MOV             R4, R6
CMP             R0, #1
ADD             R0, R6, #0x108
VLDM            R0, {S16-S18}
BEQ             loc_18316C
B               loc_183198
LDR             R1, [R4,#4]
MOV             R0, R6
CMP             R1, #1
BNE             loc_183158
VLDR            S1, [R0,#0x108]
VLDR            S0, [SP,#0x48+var_30]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_30]
VLDR            S1, [R0,#0x10C]
VLDR            S0, [SP,#0x48+var_2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_2C]
VLDR            S1, [R0,#0x110]
VLDR            S0, [SP,#0x48+var_28]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_28]
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
ADD             R1, SP, #0x48+var_30
BLX             R2
B               loc_183260
VLDR            S0, [SP,#0x48+var_30]
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x48+var_30]
VLDR            S1, [R4,#0x10C]
VLDR            S0, [SP,#0x48+var_2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_2C]
VLDR            S1, [R4,#0x110]
VLDR            S0, [SP,#0x48+var_28]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_28]
LDR             R0, [R4]
ADD             R1, SP, #0x48+var_30
LDR             R2, [R0,#0x6C]
MOV             R0, R6
BLX             R2
LDR             R0, [R5,#4]
ADD             R0, R0, #0x14000
LDRB            R1, [R0,#0x28F]
CMP             R1, #1
BNE             loc_183260
LDRB            R0, [R0,#0x290]
LDRB            R1, [R4,#0xDC]
CMP             R0, R1
BNE             loc_183260
ADD             R4, R4, #0x108
LDR             R0, [R5,#4]
MOV             R1, SP
VLDM            R4, {S0-S2}
ADD             R0, R0, #8
VSUB.F32        S16, S0, S16
VSUB.F32        S17, S1, S17
VSUB.F32        S18, S2, S18
BL              sub_5C7AD0
LDR             R0, [R5,#4]
ADD             R1, SP, #0x48+var_3C
ADD             R0, R0, #8
BL              sub_5C7AE8
VLDR            S0, [SP,#0x48+var_48]
ADD             R2, SP, #0x48+var_3C
MOV             R1, SP
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x48+var_48]
VLDR            S0, [SP,#0x48+var_44]
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x48+var_44]
VLDR            S0, [SP,#0x48+var_40]
VADD.F32        S0, S0, S18
VSTR            S0, [SP,#0x48+var_40]
VLDR            S0, [SP,#0x48+var_3C]
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x48+var_3C]
VLDR            S0, [SP,#0x48+var_38]
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x48+var_38]
VLDR            S0, [SP,#0x48+var_34]
VADD.F32        S0, S0, S18
VSTR            S0, [SP,#0x48+var_34]
LDR             R0, [R5,#4]
ADD             R0, R0, #8
BL              sub_1E5A88
ADD             SP, SP, #0x28 ; '('
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R6,PC}
