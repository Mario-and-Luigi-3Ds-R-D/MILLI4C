PUSH            {R4-R9,LR}
MOV             R8, R0
LDR             R9, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #0x74
LDR             R0, [R9]
BL              sub_5EE764
CMP             R0, #0
BNE             loc_150AB0
LDR             R0, [R8,#8]
MOV             R1, #1
LDR             R7, [R0,#0x18]
STRB            R1, [R7,#0xF2]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x98+var_94
LDR             R0, [R0,#8]
VLDR            S16, =-1000.0
MOV             R5, #0
STR             R0, [SP,#0x98+var_8C]
STM             R3, {R1,R2}
LDR             R0, =0x10646C
LDR             R1, [R9]
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
BEQ             loc_150824
SUBS            R0, R0, #0x1AC
ADDNE           R4, R0, #0x1AC
BNE             loc_150828
MOV             R4, #0
CMP             R4, #0
MOV             R6, #0
BEQ             loc_1508B8
CMP             R4, #0
LDR             R1, =byte_6CE7C8
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_1508AC
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
MOV             R2, #1
ADD             R1, SP, #0x98+var_58
BL              sub_5EC884
VLDR            S0, [SP,#0x98+var_94]
VLDR            S1, [SP,#0x98+var_58]
ADD             R5, R5, #1
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x98+var_94]
VLDR            S1, [SP,#0x98+var_90]
VLDR            S0, [SP,#0x98+var_54]
VADD.F32        S1, S1, S0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VSTR            S1, [SP,#0x98+var_90]
VLDR            S1, [SP,#0x98+var_8C]
VLDR            S2, [SP,#0x98+var_50]
VMOVGT.F32      S16, S0
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x98+var_8C]
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_150834
VMOV            S0, R5
VLDR            S17, =1.0
LDR             R4, =dword_6E197C
ADD             R1, SP, #0x98+var_94
VCVT.F32.S32    S1, S0
VDIV.F32        S0, S17, S1
VLDR            S1, [SP,#0x98+var_94]
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x98+var_94]
VLDR            S1, [SP,#0x98+var_8C]
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x98+var_8C]
LDR             R0, [R4]
VMOV            S0, R0
STR             R0, [SP,#0x98+var_98]
ADD             R0, SP, #0x98+var_3C
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x98+var_90]
BL              sub_4800C0
VLDR            S0, =0.0
ADD             R2, SP, #0x98+var_48
VSTR            S0, [SP,#0x98+var_48]
VSTR            S17, [SP,#0x98+var_44]
VSTR            S0, [SP,#0x98+var_40]
LDR             R0, [R9]
ADD             R1, SP, #0x98+var_64
BL              sub_529034
LDR             R0, [R9]
ADD             R1, R0, #0x10C000
ADD             R1, R1, #0x5B0
ADD             R3, R0, #0x10C000
ADD             R2, R0, #0x10C000
STR             R1, [SP,#0x98+var_98]
ADD             R3, R3, #0x620
ADD             R2, R2, #0x5E0
ADD             R1, SP, #0x98+var_3C
ADD             R0, SP, #0x98+var_80
BL              sub_47FE74
LDR             R0, [R4,#(dword_6E1980 - 0x6E197C)]
ADD             R1, SP, #0x98+var_80
VMOV            S0, R0
STR             R0, [SP,#0x98+var_98]
ADD             R0, SP, #0x98+var_64
VLDM            R0, {S1-S3}
ADD             R0, SP, #0x98+var_30
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VLDR            S3, [SP,#0x98+var_80]
VADD.F32        S1, S3, S1
VSTR            S1, [SP,#0x98+var_80]
VLDR            S1, [SP,#0x98+var_7C]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x98+var_7C]
VLDR            S1, [SP,#0x98+var_78]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x98+var_78]
BL              sub_480160
LDR             R0, [R7]
ADD             R1, SP, #0x98+var_30
LDR             R2, [R0,#0x20]
MOV             R0, R7
BLX             R2
ADD             R3, SP, #0x98+var_94
LDM             R3, {R0-R2}
ADD             R3, R8, #0x14
STM             R3, {R0-R2}
LDR             R0, [R8,#8]
ADD             R0, R0, #0x400
LDRSB           R0, [R0,#0x95]
ADD             R0, R0, #0xC000
ADD             R0, R0, #4
UXTH            R1, R0
LDR             R0, [R9]
BL              sub_52FACC
LDR             R2, [R7]
MOV             R1, R0
MOV             R0, R7
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #3
MOV             R0, R7
BL              sub_14C548
VLDR            S3, [R7,#0x24]
VLDR            S5, [R8,#0x14]
VLDR            S0, [R7,#0x2C]
VLDR            S2, [R8,#0x1C]
VSUB.F32        S3, S3, S5
VLDR            S1, [R7,#0x28]
VLDR            S4, [R8,#0x18]
VSUB.F32        S0, S0, S2
ADD             R2, SP, #0x98+var_74
VSUB.F32        S1, S1, S4
MOV             R1, #0
VSTR            S3, [SP,#0x98+var_74]
VMUL.F32        S2, S3, S3
VSTR            S1, [SP,#0x98+var_70]
VSTR            S0, [SP,#0x98+var_6C]
VMLA.F32        S2, S1, S1
VMOV.F32        S5, S2
VMLA.F32        S2, S0, S0
VMLA.F32        S5, S0, S0
VSQRT.F32       S4, S5
VSQRT.F32       S5, S2
VDIV.F32        S2, S17, S5
VMUL.F32        S3, S3, S2
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S0, S2
VSTR            S3, [SP,#0x98+var_74]
VSTR            S1, [SP,#0x98+var_70]
VSTR            S0, [SP,#0x98+var_6C]
LDR             R0, [R4,#(dword_6E1988 - 0x6E197C)]
VNEG.F32        S0, S4
STR             R0, [SP,#0x98+var_88]
LDR             R0, [R4,#(dword_6E1984 - 0x6E197C)]
VMOV            S1, R0
STR             R0, [SP,#0x98+var_98]
VLDR            S2, [SP,#0x98+var_88]
ADD             R0, R7, #0x1DC
BL              sub_5A290C
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E880 - 0x63E868)]
STRD            R0, R1, [R8,#0xC]
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8}
POP             {R4-R9,PC}
