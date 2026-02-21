PUSH            {R4-R8,LR}
ADD             R6, R0, #0x200
MOV             R5, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0x60
LDRSH           R0, [R6,#0xE8]
CMP             R0, #0
BLT             loc_2032E8
BNE             loc_2032DC
LDRSH           R0, [R6,#0xEA]
CMN             R0, #1
BEQ             loc_2032DC
SUB             R0, R0, #1
SXTH            R0, R0
CMP             R0, #0
STRH            R0, [R6,#0xEA]
BNE             loc_2032DC
LDR             R0, [R5]
LDR             R1, [R0,#0x6C]
MOV             R0, R5
BLX             R1
LDRB            R0, [R5,#0x2F4]
CMP             R0, #0
BEQ             loc_2032DC
LDR             R0, [R5,#4]
VLDR            S21, =0.5
LDR             R4, =off_6D1648
ADD             R1, R0, #0x108
LDR             R0, [R0,#0x110]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x90+var_5C]
ADD             R0, SP, #0x90+var_64
VMOV            S0, R2
STM             R0, {R1,R2}
LDR             R0, [R5,#4]
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0x234]
VMLA.F32        S0, S1, S21
VSTR            S0, [SP,#0x90+var_60]
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
ADD             R2, SP, #0x90+var_64
MOV             R1, #0xD1
BL              sub_168114
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x16C]
CMP             R4, #0
VLDRNE          S20, =0.0
MOVNE           R8, #1
BEQ             loc_2032DC
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R4,#0xAAC]
CMPEQ           R0, #0xB
BNE             loc_2032D0
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_2032D0
TST             R0, #4
BNE             loc_2032D0
ADD             R1, R4, #0x400
VLDR            S0, [R4,#0x108]
VLDR            S1, [R1,#0x224]
VLDR            S2, [R1,#0x234]
VLDR            S16, [R4,#0x10C]
VADD.F32        S17, S1, S0
ADD             R0, SP, #0x90+var_64
VADD.F32        S19, S2, S16
VLDR            S3, [R1,#0x228]
LDM             R0, {R7,R12}
ADD             LR, SP, #0x90+var_78
VADD.F32        S18, S3, S0
ADD             R2, SP, #0x90+var_50
STM             LR, {R7,R12}
ADD             R0, SP, #0x90+var_40
VSTR            S17, [SP,#0x90+var_58]
VSTR            S19, [SP,#0x90+var_54]
VSTR            S17, [SP,#0x90+var_48]
VSTR            S16, [SP,#0x90+var_44]
ADD             R1, SP, #0x90+var_58
VSTM            R2, {S18-S19}
ADD             R3, SP, #0x90+var_48
VSTR            S18, [SP,#0x90+var_40]
VSTR            S16, [SP,#0x90+var_3C]
STR             R0, [SP,#0x90+var_90]
VLDR            S0, [R5,#0x2EC]
ADD             R0, SP, #0x90+var_78
BL              sub_459EEC
CMP             R0, #0
NOP
BEQ             loc_2032D0
VADD.F32        S0, S17, S18
VADD.F32        S1, S19, S16
ADD             R0, SP, #0x90+var_78
LDR             R7, [R4,#0xAA8]
VLDM            R0, {S2-S3}
MOV             R0, R7
LDR             R2, [R0]
VMUL.F32        S0, S0, S21
VMUL.F32        S1, S1, S21
LDR             R2, [R2,#0x8C]
VSUB.F32        S0, S2, S0
VSUB.F32        S1, S3, S1
VLDR            S2, [R5,#0x2EC]
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VSUB.F32        S0, S1, S2
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [R5,#0x2F0]
VMOVCC.F32      S0, S20
VDIV.F32        S1, S0, S2
VCMPE.F32       S1, S20
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S1, S1
VCVT.S32.F32    S0, S1
VMOV            R1, S0
SXTH            R1, R1
BLX             R2
LDR             R0, =0x2EA
STRH            R8, [R0,R7]
LDR             R4, [R4,#8]
CMP             R4, #0
BNE             loc_2031A4
LDRH            R0, [R6,#0xE8]
SUB             R0, R0, #1
STRH            R0, [R6,#0xE8]
ADD             SP, SP, #0x60 ; '`'
MOV             R0, R5
VPOP            {D8-D10}
POP             {R4-R8,LR}
B               sub_23296C
