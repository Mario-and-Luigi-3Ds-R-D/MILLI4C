PUSH            {R4-R7,LR}
MOV             R5, R0
MOV             R4, R1
MOV             R7, R2
VPUSH           {D8-D9}
VMOV.F32        S19, S1
SUB             SP, SP, #0x2C
VLDR            S1, [R0,#4]
MOV             R6, R3
ADD             R1, SP, #0x50+var_4C
VADD.F32        S18, S1, S0
VLDR            S0, =0.71111
MOV             R0, SP
VMUL.F32        S0, S18, S0
VMOV.F32        S17, S0
BL              sub_462B20
VLDR            S16, =0.0
LDR             R0, =unk_68E030
VLDR            S3, =0.6
VCMPE.F32       S18, S16
VLDR            S2, =360.0
ADD             R3, R0, #0x250
ADD             R1, SP, #0x50+var_48
ADD             R1, R1, R6,LSL#2
VMRS            APSR_nzcv, FPSCR
VLDM            R3, {S0-S1}
ADD             R3, R0, #0x258
ADD             R2, SP, #0x50+var_38
VLDM            R3, {S4-S5}
ADD             R3, SP, #0x50+var_48
ADD             R2, R2, R6,LSL#2
VSTM            R3, {S0-S1}
ADD             R3, SP, #0x50+var_40
VADDCC.F32      S18, S18, S2
VSTM            R3, {S4-S5}
ADD             R3, R0, #0x260
ADD             R0, R0, #0x268
VLDM            R3, {S0-S1}
VLDM            R0, {S4-S5}
ADD             R0, SP, #0x50+var_38
VSTM            R0, {S0-S1}
ADD             R0, SP, #0x50+var_30
VSTM            R0, {S4-S5}
VLDR            S0, [R1,#-4]
VLDR            S1, [R5]
VLDR            S4, [SP,#0x50+var_4C]
LDR             R1, =0x2D83
VMLA.F32        S1, S0, S19
VMUL.F32        S1, S1, S4
VSTR            S1, [R4,#0x28]
VLDR            S1, [R5]
VMLA.F32        S1, S0, S19
VLDR            S0, [SP,#0x50+var_50]
VMUL.F32        S0, S1, S0
VMUL.F32        S0, S0, S3
VSTR            S0, [R4,#0x30]
VLDR            S1, [R2,#-4]
VLDR            S0, [R5,#8]
VMLA.F32        S0, S1, S19
VSTR            S0, [R4,#0x2C]
VLDR            S0, =112.5
VADD.F32        S1, S18, S0
VCVT.U32.F32    S0, S1
VMOV            R0, S0
UXTH            R0, R0
MUL             R0, R0, R1
MOV             R0, R0,LSR#22
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMLS.F32        S1, S0, S2
VLDR            S0, =0.022222
VMUL.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #4
BNE             loc_1C0F20
LDR             R2, =0x41680000
VLDR            S0, =4.0
VLDR            S2, =45.0
VMLS.F32        S1, S0, S2
VMOV            R1, S1
CMP             R1, R2
LDR             R2, =0x41F40000
VMOV            R1, S1
MOVLT           R0, #3
CMP             R1, R2
ADDGT           R0, R0, #1
SXTHGT          R0, R0
CMP             R0, #4
SUBGT           R0, R0, #8
LDRSB           R1, [R5,#0x10]
SXTHGT          R0, R0
CMP             R0, #0
RSBLT           R0, R0, #0
VLDR            S1, =1.0
ADD             R0, R0, R1
STRH            R0, [R7]
VSTRGE          S1, [R4,#4]
VSTRGE          S1, [R4,#8]
BGE             loc_1C0F5C
ADD             R0, R4, #4
VLDR            S0, =-1.0
VSTM            R0, {S0-S1}
VMOV.F32        S0, S17
VSTR            S1, [R4,#0xC]
BL              sub_464318
VNEG.F32        S0, S0
VLDR            S1, =0.017453
VLDR            S2, [R5,#0xC]
VSTR            S16, [R4,#0x10]
VSTR            S16, [R4,#0x14]
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
VSTR            S0, [R4,#0x18]
VSTR            S16, [R4,#0x1C]
VSTR            S16, [R4,#0x20]
VSTR            S16, [R4,#0x24]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D9}
POP             {R4-R7,PC}
