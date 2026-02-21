PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R7, R1
LDR             R8, =off_6CE098
VPUSH           {D8}
SUB             SP, SP, #0x44
LDR             R0, [R8]
LDR             R5, [R4,#0xB5C]
LDR             R6, [R0,#0x8C]
LDR             R0, [R5]
VLDR            S0, [R5,#8]
VLDR            S1, [R0,#0x1D8]
VLDR            S16, [R0,#0x1D0]
ADD             R0, R5, #4
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S16, S0
BL              sub_5A18EC
VSTR            S16, [R5,#0x10]
VSTR            S16, [R5,#8]
MOV             R0, R4
BL              sub_258628
ADD             R0, R6, #0x400
ADD             R1, SP, #0x70+var_48
VLDR            S2, [R0,#0x108]
VLDR            S0, [R0,#0x104]
LDR             R0, [R4,#0xB5C]
VSUB.F32        S2, S2, S0
VLDR            S3, [R0,#8]
LDR             R0, [R0]
VLDR            S1, [R0,#0x1D0]
VLDR            S4, [R0,#0x1D4]
ADD             R0, R4, #0x400
VSUB.F32        S3, S3, S1
VSUB.F32        S4, S4, S1
ADD             R0, R0, #0x27C
MOV             R9, R0
VDIV.F32        S1, S3, S4
VMLA.F32        S0, S2, S1
VSTR            S0, [SP,#0x70+var_48]
VSTR            S0, [SP,#0x70+var_44]
VSTR            S0, [SP,#0x70+var_40]
BL              sub_14EA04
LDR             R0, =off_6CE970
LDR             R5, [R0]
BL              sub_4635D8
MOV             R11, #7
MOV             R10, #0
MOV             R3, R0
LDR             R1, =0x172
MOV             R2, R9
MOV             R0, R5
STR             R10, [SP,#0x70+var_6C]
STR             R11, [SP,#0x70+var_70]
BL              sub_52AE1C
LDR             R0, [R4,#0xB5C]
VLDR            S0, [R0,#8]
LDR             R0, [R0]
VLDR            S1, [R0,#0x1D0]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_258A20
LDR             R0, [R8]
ADD             R1, SP, #0x70+var_60
LDR             R2, [R0,#0x80]!
ADD             R0, R0, #4
STR             R0, [SP,#0x70+var_60]
STR             R2, [SP,#0x70+var_64]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x70+var_5C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x70+var_64]
BL              sub_256768
ADD             R0, SP, #0x70+var_64
BL              sub_62938C
STRB            R11, [R4]
LDR             R0, [R4,#0xA70]
CMP             R0, #0
BEQ             loc_258978
BL              sub_533330
STR             R10, [R4,#0xA70]
LDR             R0, [R4,#0xB50]
BL              sub_259C00
LDR             R0, [R4,#0xA74]
NOP
BL              sub_24F1C8
STRB            R10, [R4,#0xA95]
LDR             R0, [R7]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
MOV             R1, R0
LDR             R0, [R4,#0xA74]
VLDR            S2, [R1]
VLDR            S1, [R1,#4]
VLDR            S3, [R1,#8]
VLDR            S0, [R0,#0x2C]
ADD             R0, R0, #0x24 ; '$'
VLDM            R0, {S4-S5}
VSUB.F32        S0, S3, S0
VSUB.F32        S2, S2, S4
VSUB.F32        S1, S1, S5
VSTR            S2, [SP,#0x70+var_58]
VSTR            S1, [SP,#0x70+var_54]
VSTR            S0, [SP,#0x70+var_50]
BL              sub_4635D8
VLDR            S4, [SP,#0x70+var_58]
VLDR            S1, [SP,#0x70+var_54]
VLDR            S3, [SP,#0x70+var_50]
VMUL.F32        S0, S4, S4
VLDR            S2, =0.0
VLDR            S16, =1.0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S3, S3
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_258A34
LDM             R0, {R1,R2}
ADD             R3, SP, #0x70+var_58
LDR             R0, [R0,#8]
STR             R0, [SP,#0x70+var_50]
STM             R3, {R1,R2}
B               loc_258A54
LDR             R0, [R4,#0xA74]
BL              sub_24EDB8
NOP
NOP
B               loc_258990
VSQRT.F32       S5, S0
VDIV.F32        S0, S16, S5
VMUL.F32        S4, S4, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
VSTR            S4, [SP,#0x70+var_58]
VSTR            S1, [SP,#0x70+var_54]
VSTR            S0, [SP,#0x70+var_50]
VLDR            S0, [R6,#0x2B4]
ADD             R2, SP, #0x70+var_3C
ADD             R1, SP, #0x70+var_58
VMOV.F32        S1, S0
ADD             R0, R4, #0x70 ; 'p'
BL              sub_253710
VLDR            S0, [R6,#0x2B4]
VLDR            S1, [R4,#0x70]
VNEG.F32        S0, S0
VMUL.F32        S1, S1, S0
VSTR            S1, [R4,#0x70]
VLDR            S1, [R4,#0x74]
VMUL.F32        S1, S1, S0
VSTR            S1, [R4,#0x74]
VLDR            S1, [R4,#0x78]
VMUL.F32        S0, S1, S0
VSTR            S0, [R4,#0x78]
VLDR            S0, [R6,#0x274]
VLDR            S1, [R4,#0x70]
VNEG.F32        S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_258AC0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S2
VMOVCS.F32      S0, S1
VSTR            S0, [R4,#0x70]
LDR             R0, [R8]
ADD             R4, R4, #4
LDR             R5, [R0,#0x8C]
MOV             R0, R4
LDR             R6, [R5,#0x2BC]
BL              sub_5A18EC
VMOV.F32        S0, S16
STR             R6, [R4,#0xC]
STR             R6, [R4,#4]
VLDR            S1, [R5,#0x2B8]
MOV             R0, R4
BL              sub_5A12F8
MOV             R0, #1
STRB            R0, [R4,#0x68]
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8}
POP             {R4-R11,PC}
