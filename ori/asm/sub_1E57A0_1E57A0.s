PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R5, R1
LDM             R1, {R0-R2}
ADD             R3, R4, #4
SUB             SP, SP, #0x4C
ADD             R6, R5, #0xC
STM             R3, {R0-R2}
ADD             R3, R4, #0x1C
LDM             R6, {R0-R2}
MOV             R7, #0
STM             R3, {R0-R2}
ADD             R3, R4, #0x34 ; '4'
LDM             R6, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R5, #0x18
ADD             R3, R4, #0x58 ; 'X'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, [R5,#0x24]
STR             R0, [R4,#0x90]
LDR             R0, [R5,#0x28]
STR             R0, [R4,#0x94]
LDR             R0, [R5,#0x2C]
STR             R0, [R4,#0x98]
LDR             R0, [R5,#0x30]
STR             R0, [R4,#0x9C]
LDR             R0, [R5,#0x34]
STR             R0, [R4,#0xA0]
VLDR            S4, [R4,#0x1C]
VLDR            S5, [R4,#4]
VLDR            S0, [R4,#0x24]
VLDR            S1, [R4,#0xC]
VLDR            S2, [R4,#0x20]
VLDR            S3, [R4,#8]
VSUB.F32        S5, S4, S5
VSUB.F32        S4, S0, S1
VSUB.F32        S3, S2, S3
ADD             R0, SP, #0x60+var_2C
VLDR            S1, =0.0
VSTR            S5, [SP,#0x60+var_30]
VSTM            R0, {S3-S4}
LDR             R0, =flt_697140
ADD             R1, R0, #0x400
VLDR            S2, [R0]
VLDR            S7, [R0,#(flt_697148 - 0x697140)]
VLDR            S0, [R0,#(flt_697144 - 0x697140)]
VLDR            S6, [R0,#(flt_69714C - 0x697140)]
VMLA.F32        S2, S1, S7
VLDR            S9, [R1,#(flt_697548 - 0x697540)]
VMLA.F32        S0, S1, S6
VLDM            R1, {S6-S7}
VLDR            S8, [R1,#(flt_69754C - 0x697540)]
VMLA.F32        S6, S1, S9
VMLA.F32        S7, S1, S8
VMOV.F32        S1, S2
VMOV.F32        S10, S0
VMOV.F32        S8, S0
VNEG.F32        S14, S1
VMUL.F32        S11, S6, S1
VMOV.F32        S1, S0
VMUL.F32        S12, S10, S0
VMOV.F32        S10, S2
VMUL.F32        S8, S6, S8
VMUL.F32        S6, S6, S0
VMUL.F32        S9, S7, S1
VMOV.F32        S1, S2
VMUL.F32        S13, S10, S0
VMOV.F32        S10, S11
VMUL.F32        S1, S7, S1
VMUL.F32        S7, S7, S0
VMLA.F32        S10, S9, S2
VMLA.F32        S9, S11, S2
VMOV.F32        S0, S1
VNMLS.F32       S0, S8, S2
VSTR            S12, [SP,#0x60+var_60]
VSTR            S13, [SP,#0x60+var_50]
VNMLS.F32       S8, S1, S2
VLDR            S1, =1.0
ADD             R0, SP, #0x60+var_3C
ADD             R3, SP, #0x60+var_30
ADD             R2, SP, #0x60+var_30
MOV             R1, SP
VSTR            S0, [SP,#0x60+var_5C]
VMUL.F32        S0, S5, S5
VSTR            S8, [SP,#0x60+var_48]
VSTR            S10, [SP,#0x60+var_58]
VSTR            S9, [SP,#0x60+var_4C]
VSTR            S14, [SP,#0x60+var_40]
VSTM            R0, {S6-S7}
MOV             R0, R2
STR             R7, [SP,#0x60+var_54]
VMLA.F32        S0, S3, S3
STR             R7, [SP,#0x60+var_44]
STR             R7, [SP,#0x60+var_34]
VMLA.F32        S0, S4, S4
VSQRT.F32       S2, S0
VDIV.F32        S0, S1, S2
VMUL.F32        S1, S5, S0
VMUL.F32        S2, S3, S0
VMUL.F32        S0, S4, S0
VSTR            S0, [SP,#0x60+var_28]
VSTM            R3, {S1-S2}
BL              sub_1169FC
ADD             R1, R4, #0x5C ; '\'
VLDR            S3, [R4,#0x58]
VLDR            S0, [SP,#0x60+var_30]
MOV             R2, R6
VLDM            R1, {S1-S2}
ADD             R1, SP, #0x60+var_2C
VSUB.F32        S3, S3, S0
VLDM            R1, {S4-S5}
ADD             R1, R4, #0x68 ; 'h'
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S5
VSTR            S3, [R4,#0x64]
VSTM            R1, {S1-S2}
ADD             R1, R4, #4
VLDR            S5, [R4,#0x58]
VLDR            S3, [R4,#0x5C]
VLDR            S4, [SP,#0x60+var_2C]
VMUL.F32        S0, S5, S0
VLDR            S1, [R4,#0x60]
VLDR            S2, [SP,#0x60+var_28]
VMLA.F32        S0, S3, S4
VMLA.F32        S0, S1, S2
VSTR            S0, [R4,#0x70]
STRB            R7, [R4,#0xB4]
LDR             R0, [R4]
LDR             R3, [R0,#0x20]
MOV             R0, R4
BLX             R3
LDR             R0, [R5,#0x38]
MOV             R1, #0x400
STR             R0, [R4,#0xB8]
LDR             R0, [R4]
LDR             R2, [R0,#0x1C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#0x60]
LDR             R12, [R4,#0xB8]
LDRD            R2, R3, [R4,#0x58]
STR             R0, [SP,#0x60+var_1C]
ADD             R1, SP, #0x60+var_24
MOV             R0, R12
STRD            R2, R3, [SP,#0x60+var_24]
BL              sub_4C56EC
LDR             R0, [R4,#0xB8]
MOV             R1, R6
BL              sub_4C57D8
LDR             R0, [R4,#0xB8]
LDR             R1, [R4,#4]
STR             R1, [R0,#0x98]
LDR             R1, [R4,#8]
STR             R1, [R0,#0xA8]
LDR             R1, [R4,#0xC]
STR             R1, [R0,#0xB8]
LDR             R0, [R4,#0xB8]
LDR             R1, [R0,#0x38]
BIC             R1, R1, #2
STR             R1, [R0,#0x38]
LDR             R0, [R4,#0xB8]
BL              sub_4B0068
LDR             R0, [R4,#0xB8]
BL              sub_4C5864
ADD             R0, R4, #0x40 ; '@'
ADD             R3, R4, #0x4C ; 'L'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, [R4,#0x90]
STR             R0, [R4,#0xA4]
LDR             R0, [R4,#0x94]
STR             R0, [R4,#0xA8]
LDR             R0, [R4,#0x98]
STR             R0, [R4,#0xAC]
LDR             R0, [R4,#0x9C]
STR             R0, [R4,#0xB0]
LDR             R0, [R4]
LDR             R1, [R0,#0x14]
MOV             R0, R4
BLX             R1
ADD             SP, SP, #0x4C ; 'L'
POP             {R4-R7,PC}
