PUSH            {R4-R7,LR}
MOV             R5, R1
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x34
BL              sub_27D73C
LDR             R1, =off_6CDF98
LDRB            R0, [R4,#0x3F8]
LDR             R1, [R1]
CMP             R0, #1
LDR             R6, [R1,#0x124]
BNE             loc_27CB9C
ADD             R1, R4, #0x400
ADD             R1, R1, #0x78 ; 'x'
MOV             R7, R1
MOV             R0, R4
BL              sub_27D370
MOV             R1, R7
MOV             R0, R4
BL              sub_27C404
VMOV.F32        S17, S0
CMP             R5, #1
BLS             loc_27C9D4
SUB             R0, R5, #1
VMOV            S1, R0
VMOV.F32        S0, S17
VCVT.F32.S32    S1, S1
VDIV.F32        S17, S0, S1
ADD             R0, R4, #0x400
ADD             R0, R0, #0x34 ; '4'
MOV             R5, R0
BL              sub_5A18EC
VLDR            S0, [R6,#0x27C]
MOV             R0, R5
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S17
BL              sub_5A14A4
VLDR            S16, =0.0
VCMP.F32        S17, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_27CB9C
VLDR            S0, =40.744
VMUL.F32        S17, S17, S0
VMOV.F32        S0, S17
BL              sub_464380
VMOV.F32        S18, S0
VMOV.F32        S0, S17
BL              sub_464318
VNEG.F32        S2, S18
VSTR            S0, [SP,#0x58+var_58]
VLDR            S1, =1.0
ADD             R6, R4, #0x400
ADD             R0, R4, #0x5D0
VSTR            S2, [SP,#0x58+var_54]
VSTR            S16, [SP,#0x58+var_50]
VSTR            S16, [SP,#0x58+var_4C]
VSTR            S18, [SP,#0x58+var_48]
VSTR            S0, [SP,#0x58+var_44]
VSTR            S16, [SP,#0x58+var_40]
VSTR            S16, [SP,#0x58+var_3C]
VSTR            S16, [SP,#0x58+var_38]
VSTR            S16, [SP,#0x58+var_34]
VSTR            S1, [SP,#0x58+var_30]
VSTR            S16, [SP,#0x58+var_2C]
ADD             R6, R6, #0xC4
VMOV.F32        S17, S0
VLDR            S0, [R0]
VLDR            S1, [R6]
MOV             R1, SP
VSUB.F32        S0, S0, S1
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [R6,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S1, [R6,#8]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#8]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1F4
VLDR            S1, [R6]
VLDR            S0, [R0]
MOV             R5, R0
VSUB.F32        S0, S0, S1
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [R6,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S1, [R6,#8]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#8]
ADD             R0, R4, #0x5D0
MOV             R2, R0
BL              sub_1169FC
MOV             R0, R5
MOV             R2, R0
MOV             R1, SP
BL              sub_1169FC
ADD             R0, R4, #0x5D0
VLDR            S1, [R6]
VLDR            S0, [R0]
MOV             R1, SP
VADD.F32        S0, S0, S1
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [R6,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S1, [R6,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#8]
VLDR            S0, [R5]
VLDR            S1, [R6]
ADD             R0, R4, #0x400
VADD.F32        S0, S0, S1
VSTR            S0, [R5]
VLDR            S0, [R5,#4]
VLDR            S1, [R6,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#4]
VLDR            S0, [R5,#8]
VLDR            S1, [R6,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#8]
VLDR            S0, [R0,#0xC8]
VMUL.F32        S1, S0, S18
VLDR            S0, [R0,#0xC4]
VMLS.F32        S1, S17, S0
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x58+var_4C]
VLDR            S1, [R0,#0xC4]
VLDR            S0, [R0,#0xC8]
VNMUL.F32       S1, S18, S1
VMLS.F32        S1, S17, S0
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x58+var_3C]
LDR             R0, [R4,#0x6FC]
BL              sub_27D6E4
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4-R7,PC}
