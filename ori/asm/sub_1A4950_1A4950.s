PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0xC
VCVT.F32.S32    S0, S0
VMUL.F32        S18, S0, S1
VMOV.F32        S0, S18
BL              sub_5A176C
LDRB            R0, [R4,#8]
CMP             R0, #0
BNE             loc_1A4A6C
LDR             R0, [R4,#4]
VLDR            S1, [R4,#0x10]
LDR             R1, [R0,#0x10]
LDR             R0, [R0,#0x14]
VLDR            S16, [R1,#0x20]
VLDR            S0, [R0,#0x28]
VLDR            S4, [R1,#0x1C]
VMOV.F32        S17, S16
VMLA.F32        S0, S1, S18
VLDR            S3, [R1,#0x24]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [R4,#0x44]
VMOVLE.F32      S16, S0
VSUB.F32        S5, S17, S2
VSUB.F32        S1, S16, S2
VDIV.F32        S0, S1, S5
VLDR            S1, [R4,#0x40]
VSUB.F32        S4, S4, S1
VMLA.F32        S2, S0, S5
VMLA.F32        S1, S0, S4
VSTMEA          SP, {S1-S2}
VLDR            S1, [R4,#0x48]
VSUB.F32        S2, S3, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x30+var_28]
VSTR            S16, [SP,#0x30+var_2C]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x14]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
VCMP.F32        S17, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1A4A6C
LDR             R6, =off_6CE388
LDR             R0, [R6]
BL              sub_1A2728
LDR             R0, [R4,#4]
LDR             R5, [R0,#0x18]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1A4A64
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x3AC]
SXTH            R1, R0
LDR             R0, [R5,#4]
BL              sub_1586A8
LDR             R0, [R4,#4]
BL              sub_61E634
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R6,PC}
