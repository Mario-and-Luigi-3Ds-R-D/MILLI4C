PUSH            {R4-R11,LR}
MOV             R7, R0
MOV             R8, R1
LDR             R2, =off_6CE098
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R2]
LDR             R1, [R0,#0x8C]
LDR             R3, [R0,#0x68]!
ADD             R0, R0, #4
VLDR            S1, [R1,#0x70]
STR             R3, [SP,#0x40+var_40]
STR             R0, [SP,#0x40+var_3C]
VADD.F32        S0, S1, S0
LDR             R3, [R0,#4]
ADD             R1, SP, #0x40+var_3C
STR             R3, [SP,#0x40+var_38]
STR             R1, [R3]
STR             R1, [R0,#4]
LDR             R0, [R7,#0x80]
LDR             R4, [R7,#0x7C]
VMUL.F32        S16, S0, S0
CMP             R0, R4
BEQ             loc_24A8C0
LDR             R11, =0x19DEE8
LDR             R10, =off_6CE970
VLDR            S19, =1.0
VLDR            S18, =0.0039062
LDR             R1, [R4]
VLDR            S3, [R8]
VLDR            S2, [R8,#4]
VLDR            S1, [R1,#0x28]
VLDR            S0, [R1,#0x2C]
VLDR            S4, [R1,#0x30]
VSUB.F32        S1, S3, S1
VSUB.F32        S2, S2, S0
VLDR            S3, [R8,#8]
VMUL.F32        S0, S1, S1
VSUB.F32        S1, S3, S4
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_24A8B0
MOV             R0, #2
STRB            R0, [R1],#0x28
LDR             R0, =off_6CE098
LDR             R0, [R0]
BL              sub_254D20
LDR             R6, [SP,#0x40+var_40]
LDR             R0, [R4]
LDR             R5, [R6,#0xB5C]
ADD             R9, R0, #4
LDR             R0, [R5]
VLDR            S1, [R5,#8]
VLDR            S2, [R0,#0x1D0]
VLDR            S17, [R0,#0x1D4]
VLDR            S3, [R0,#0x1E0]
VSUB.F32        S4, S1, S2
VSUB.F32        S5, S17, S2
VLDR            S0, [R0,#0x1DC]
ADD             R0, R5, #4
VSUB.F32        S3, S3, S0
VDIV.F32        S2, S4, S5
VMLA.F32        S0, S3, S2
VDIV.F32        S2, S19, S0
VADD.F32        S0, S1, S2
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S17, S0
BL              sub_5A18EC
VSTR            S17, [R5,#0x10]
VSTR            S17, [R5,#8]
LDR             R0, [R10]
ADD             R0, R0, R11; loc_19DEE8
VLDR            S0, [R0]
MOV             R0, R6
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S18
VSTR            S0, [R5,#0x3C]
BL              sub_258628
LDR             R0, [R10]
LDR             R5, [R6,#0xB50]
MOV             R1, R9
ADD             R2, R0, R11; loc_19DEE8
VLDR            S0, [R2]
VLDR            S1, [R5,#0x1C]
VCVT.F32.S32    S0, S0
VMUL.F32        S17, S0, S18
VCMP.F32        S1, S17
VMRS            APSR_nzcv, FPSCR
BEQ             loc_24A8B0
LDR             R12, =0xFFE683CC
LDR             R2, =0x301D7
MOV             R3, #0
SUB             R0, R0, R12
BL              sub_503720
VSTR            S17, [R5,#0x1C]
LDR             R0, [R7,#0x80]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_24A798
LDR             R1, [SP,#0x40+var_38]
ADD             R0, SP, #0x40+var_3C
CMP             R1, R0
BNE             loc_24A8EC
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_24A8EC
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x40+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
