PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
MOV             R5, R1
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0xC
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
VMOV.F32        S0, S16
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x40 ; '@'
BL              sub_5A176C
LDRB            R0, [R4,#4]
CMP             R0, #0
BEQ             loc_267678
CMP             R0, #1
BEQ             loc_267744
CMP             R0, #2
BNE             loc_26766C
LDR             R0, [R4,#8]
ADD             R0, R0, #0x11C
BL              sub_5F19B8
CMP             R0, #0
MOVEQ           R0, #3
BNE             loc_26766C
STRB            R0, [R4,#4]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
LDR             R0, [R4]
VLDR            S2, [R4,#0x44]
MOV             R1, R0
ADD             R0, R0, #0x394
ADD             R1, R1, #0x3A0
VLDR            S0, [R0,#8]
VLDR            S5, [R1,#8]
VLDR            S6, [R1]
VLDR            S3, [R0]
VSUB.F32        S5, S5, S0
VLDR            S4, [R1,#4]
VSUB.F32        S6, S6, S3
VLDR            S1, [R0,#4]
LDR             R0, [R4,#8]
VSUB.F32        S4, S4, S1
VMLA.F32        S0, S2, S5
VMLA.F32        S3, S2, S6
VMLA.F32        S1, S2, S4
VLDR            S4, [R5,#8]
VLDR            S2, [R5]
VADD.F32        S4, S0, S4
VADD.F32        S0, S3, S2
VLDR            S2, [R0,#0x24]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VLDR            S3, [R4,#0x10]
VMOVCC.F32      S0, S2
VSUB.F32        S0, S0, S2
VMLA.F32        S2, S3, S0
VSTR            S2, [SP,#0x20+var_20]
VLDR            S0, [R0,#0x28]
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S3, S1
VSTR            S0, [SP,#0x20+var_1C]
VLDR            S0, [R0,#0x2C]
VSUB.F32        S1, S4, S0
VMLA.F32        S0, S3, S1
VSTR            S0, [SP,#0x20+var_18]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             R0, R4, #0xC
BL              sub_5F1964
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_267668
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
LDR             R0, [R4]
VLDR            S1, [R4,#0x44]
MOV             R1, R0
ADD             R0, R0, #0x394
ADD             R1, R1, #0x3A0
VLDR            S0, [R0]
VLDR            S2, [R1]
VSUB.F32        S2, S2, S0
VMLA.F32        S0, S1, S2
VSTR            S0, [SP,#0x20+var_20]
VLDR            S3, [R1,#4]
VLDR            S2, [R0,#4]
VSUB.F32        S3, S3, S2
VMLA.F32        S2, S1, S3
VSTR            S2, [SP,#0x20+var_1C]
VLDR            S3, [R1,#8]
VLDR            S2, [R0,#8]
VSUB.F32        S3, S3, S2
VMLA.F32        S2, S1, S3
VSTR            S2, [SP,#0x20+var_18]
VLDR            S1, [R5]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_20]
VLDR            S0, [R5,#8]
VADD.F32        S0, S2, S0
VSTR            S0, [SP,#0x20+var_18]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
