PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R6, R1
MOV             R8, #0
VPUSH           {D8-D9}
SUB             SP, SP, #0xB4
LDR             R0, [R0,#0xC]
CMP             R0, #0
BNE             loc_2A2D00
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDR             R9, =off_6CE970
LDR             R1, =0xA003
LDR             R0, [R9]
BL              sub_52FACC
MOV             R5, R0
ADD             R0, R0, #0xA0
MOV             R7, R0
MOV             R0, R5
MOV             R1, #0
BL              sub_5F0474
MOV             R2, #0x100
MOV             R1, R0
STR             R2, [SP,#0xE0+var_D8]
MOV             R3, #0
MOV             R2, R7
ADD             R0, R4, #0x190
STR             R8, [SP,#0xE0+var_E0]
STR             R8, [SP,#0xE0+var_DC]
BL              sub_1137FC
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #0x190
BL              sub_11DCDC
MOV             R1, #1
STRB            R1, [R4,#0x1FF]
MOV             R1, R6
ADD             R0, SP, #0xE0+var_4C
BL              sub_4800C0
BL              sub_47FFCC
CMP             R0, #0
BEQ             loc_2A2B6C
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_2A2D44
MOV             R0, #3
NOP
BL              sub_58F1A0
MOV             R1, R0
ADD             R0, SP, #0xE0+var_D4
BL              sub_21445C
LDR             R5, =flt_6E34B0
VLDR            S18, =0.0
ADD             R2, SP, #0xE0+var_40
ADD             R1, R5, #0x250
LDM             R1, {R0,R1}
STRD            R0, R1, [SP,#0xE0+var_40]
VSTR            S18, [SP,#0xE0+var_38]
ADD             R1, SP, #0xE0+var_58
ADD             R0, SP, #0xE0+var_D4
BL              sub_5C8C34
VLDR            S1, [SP,#0xE0+var_4C]
VLDR            S5, [SP,#0xE0+var_58]
VLDR            S0, [SP,#0xE0+var_48]
VLDR            S4, [SP,#0xE0+var_54]
VLDR            S2, [SP,#0xE0+var_44]
VLDR            S3, [SP,#0xE0+var_50]
VADD.F32        S1, S1, S5
VADD.F32        S0, S0, S4
VADD.F32        S2, S2, S3
ADD             R2, R4, #0x294
MOV             R1, R2
ADD             R0, SP, #0xE0+var_D4
VSTR            S1, [R4,#0x294]
VSTR            S0, [R4,#0x298]
VSTR            S2, [R4,#0x29C]
BL              sub_5C8C04
VLDR            S1, [R5,#(flt_6E3708 - 0x6E34B0)]
VLDR            S0, [R4,#0x29C]
VLDR            S17, =0.5
VLDR            S16, =-0.5
VADD.F32        S0, S0, S1
ADD             R0, R5, #0x25C
ADD             R2, SP, #0xE0+var_40
VSTR            S0, [R4,#0x29C]
VLDR            S1, [R4,#0x294]
VMOV.F32        S0, S17
VCMPE.F32       S1, S18
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S16
VADD.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x294]
VLDR            S1, [R4,#0x298]
VMOV.F32        S0, S17
VCMPE.F32       S1, S18
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S16
VADD.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x298]
LDM             R0, {R0,R1}
STRD            R0, R1, [SP,#0xE0+var_40]
VSTR            S18, [SP,#0xE0+var_38]
ADD             R1, SP, #0xE0+var_58
ADD             R0, SP, #0xE0+var_D4
BL              sub_5C8C34
ADD             R1, SP, #0xE0+var_4C
VLDR            S0, [SP,#0xE0+var_44]
VLDR            S3, [SP,#0xE0+var_50]
VLDR            S4, [SP,#0xE0+var_54]
VLDR            S5, [SP,#0xE0+var_58]
VADD.F32        S0, S0, S3
VLDM            R1, {S1-S2}
ADD             R3, R4, #0x2A0
ADD             R2, R4, #0x2A0
MOV             R1, R2
VADD.F32        S1, S1, S5
VADD.F32        S2, S2, S4
ADD             R0, SP, #0xE0+var_D4
VSTR            S0, [R4,#0x2A8]
VSTM            R3, {S1-S2}
BL              sub_5C8C04
VLDR            S1, [R5,#(flt_6E3714 - 0x6E34B0)]
VLDR            S0, [R4,#0x2A8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x2A8]
VLDR            S1, [R4,#0x2A0]
VMOV.F32        S0, S17
VCMPE.F32       S1, S18
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S16
VADD.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x2A0]
VLDR            S0, [R4,#0x2A4]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S17, S16
VADD.F32        S0, S0, S17
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x2A4]
MOV             R2, #0xFFFFFF00
MOV             R0, R4
REV             R2, R2
ADD             R1, SP, #0xE0+var_34
STR             R2, [SP,#0xE0+var_34]
LDR             R2, [R4]
LDR             R2, [R2,#0x3C]
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x2A0
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
STRB            R8, [R4,#0xFD]
ADD             SP, SP, #0xB4
VPOP            {D8-D9}
POP             {R4-R9,PC}
LDR             R0, [R9]
BL              sub_528E64
LDRB            R0, [R0,#0x495]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #2
B               loc_2A2B70
