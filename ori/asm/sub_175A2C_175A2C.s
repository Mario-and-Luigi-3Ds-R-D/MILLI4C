PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8}
SUB             SP, SP, #0x50
LDR             R0, [R0,#0x84]
TST             R0, #2
BEQ             loc_175A68
LDR             R0, [R4]
LDR             R1, [R0,#0x28]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x84]
ORR             R0, R0, #8
STR             R0, [R4,#0x84]
LDR             R0, =0x758
MOV             R6, #0
STR             R6, [R4,#0x648]
LDRH            R0, [R0,R4]
SUB             R1, R0, #0xFF00
SUBS            R1, R1, #0xFF
BEQ             loc_175A94
MOV             R2, #0
MOV             R1, R2
VLDR            S0, =1.0
BL              sub_145730
VLDR            S16, =0.0
VLDR            S0, =-1.0
VSTR            S16, [SP,#0x70+var_60]
VSTR            S16, [SP,#0x70+var_5C]
ADD             R0, R5, #0x400
VSTR            S0, [SP,#0x70+var_58]
VLDR            S0, [R0,#0x74]
VLDR            S1, =40.744
VMOV.F32        S3, S16
LDR             R0, =0x47800000
VNMUL.F32       S0, S1, S0
MOV             R2, #0
MOV             R1, #0
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
VMOV.F32        S1, S16
MOVCC           R3, #1
MOVCS           R3, #0
VLDR            S2, =65536.0
VMOV            R12, S0
CMP             R12, R0
BLT             loc_175B00
VSUB.F32        S0, S0, S2
VMOV            R12, S0
CMP             R12, R0
BGE             loc_175AF0
VMOV            R12, S1
CMP             R12, R0
BLT             loc_175B1C
VSUB.F32        S1, S1, S2
VMOV            R12, S1
CMP             R12, R0
BGE             loc_175B0C
VCVT.U32.F32    S2, S3
LDR             R8, =flt_697140
CMP             R2, #0
VMOV            R0, S2
VCVT.U32.F32    S2, S0
UXTH            R0, R0
AND             R7, R0, #0xFF
VMOV            R12, S2
VCVT.U32.F32    S2, S1
UXTH            R12, R12
VMOV            R5, S2
VMOV            S2, R0
AND             R0, R12, #0xFF
UXTH            R5, R5
VMOV            S5, R5
ADD             R0, R8, R0,LSL#4
VCVT.F32.U32    S4, S2
VMOV            S2, R12
AND             R12, R5, #0xFF
ADD             R5, R8, R7,LSL#4
VCVT.F32.U32    S6, S5
VLDR            S12, [R5,#8]
ADD             R12, R8, R12,LSL#4
VCVT.F32.U32    S2, S2
VLDR            S13, [R0,#8]
VLDR            S14, [R12,#8]
VSUB.F32        S4, S3, S4
VLDR            S7, [R12,#4]
VLDR            S10, [R12,#0xC]
VLDR            S8, [R5,#4]
VSUB.F32        S6, S1, S6
VLDR            S1, [R12]
VLDR            S9, [R5,#0xC]
VSUB.F32        S5, S0, S2
VLDR            S2, [R5]
VLDR            S0, [R0]
VMLA.F32        S8, S4, S9
VMLA.F32        S2, S4, S12
VLDR            S3, [R0,#4]
VLDR            S11, [R0,#0xC]
VMLA.F32        S1, S6, S14
VMLA.F32        S7, S6, S10
VMLA.F32        S0, S5, S13
VMLA.F32        S3, S5, S11
VNEGNE.F32      S2, S2
CMP             R3, #0
VMUL.F32        S5, S8, S7
VNEGNE.F32      S0, S0
CMP             R1, #0
VNEGNE.F32      S1, S1
VMUL.F32        S9, S2, S7
VMUL.F32        S7, S7, S3
VNEG.F32        S13, S0
VMUL.F32        S10, S2, S1
VMUL.F32        S12, S1, S3
VMUL.F32        S2, S2, S3
VSTR            S7, [SP,#0x70+var_50]
VMOV.F32        S4, S10
VMUL.F32        S10, S8, S1
VMUL.F32        S1, S8, S3
VSTR            S12, [SP,#0x70+var_40]
VSTR            S2, [SP,#0x70+var_2C]
VMOV.F32        S6, S4
VMOV.F32        S11, S10
VMLA.F32        S6, S5, S0
VMLA.F32        S5, S4, S0
VSTR            S1, [SP,#0x70+var_28]
VMOV.F32        S4, S11
VNMLS.F32       S4, S9, S0
VNMLS.F32       S9, S11, S0
VSTR            S4, [SP,#0x70+var_4C]
VSTR            S9, [SP,#0x70+var_38]
VSTR            S6, [SP,#0x70+var_48]
VSTR            S5, [SP,#0x70+var_3C]
VSTR            S13, [SP,#0x70+var_30]
ADD             R2, SP, #0x70+var_60
ADD             R1, SP, #0x70+var_50
MOV             R0, R2
STR             R6, [SP,#0x70+var_44]
STR             R6, [SP,#0x70+var_34]
STR             R6, [SP,#0x70+var_24]
BL              sub_1169FC
VLDR            S1, [SP,#0x70+var_60]
VLDR            S0, =128.0
MOV             R0, #1
ADD             R1, R4, #0x164
VMUL.F32        S1, S1, S0
MOV             R3, #0
ADD             R2, SP, #0x70+var_60
VSTR            S1, [SP,#0x70+var_60]
VLDR            S1, [SP,#0x70+var_5C]
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x70+var_5C]
VLDR            S1, [SP,#0x70+var_58]
VMUL.F32        S0, S1, S0
VMOV.F32        S1, S16
VMOV.F32        S3, S1
VSTR            S0, [SP,#0x70+var_58]
STRD            R0, R1, [SP,#0x70+var_68]
STR             R0, [SP,#0x70+var_6C]
STR             R6, [SP,#0x70+var_70]
LDR             R0, [R4]
VLDR            S0, =16.0
MOV             R1, #1
LDR             R12, [R0,#0x1E0]
VMOV.F32        S2, S0
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
VLDR            S2, =-30.0
VLDR            S1, =1.75
VLDR            S0, =20.0
LDR             R1, [R0,#0x214]
MOV             R0, R4
BLX             R1
LDR             R1, [R4,#0x4EC]
ADD             R0, R4, #0x400
ADD             R0, R0, #0xEC
TST             R1, #0xF000
BNE             loc_175D08
BIC             R1, R1, #0xF000
ORR             R1, R1, #0x2000
STR             R1, [R0]
LDR             R3, [R4,#0x464]
MOV             R2, #0xA
BIC             R3, R3, #0x700
ORR             R3, R3, #0x300
STR             R3, [R4,#0x464]
LDRB            R1, [R4,#0x75C]
BIC             R1, R1, #7
ORR             R1, R1, #2
STRB            R1, [R4,#0x75C]
STRB            R2, [R4,#0x75D]
ADD             SP, SP, #0x50 ; 'P'
VPOP            {D8}
POP             {R4-R8,PC}
