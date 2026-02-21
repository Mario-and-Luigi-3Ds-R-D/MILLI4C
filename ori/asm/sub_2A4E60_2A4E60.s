PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
LDR             R1, =0x19DEE2
VLDR            S1, =0.0039062
LDR             R2, =0x19DFE8
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R5]
VLDR            S17, =1.0
LDRSH           R1, [R1,R0]; loc_19DEE0
LDR             R0, [R0,R2]
LDRB            R2, [R4,#0x115]
VMOV            S0, R1
MOV             R1, SP
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
BL              sub_4D37F4
VLDR            S0, =370.0
VLDR            S6, =0.5
VSTR            S0, [SP,#0x20+var_18]
VLDR            S5, [R4,#0x24]
VLDR            S3, [SP,#0x20+var_20]
VLDR            S4, [R4,#0x28]
VLDR            S2, [SP,#0x20+var_1C]
VSUB.F32        S3, S3, S5
VLDR            S1, [R4,#0x2C]
VSUB.F32        S2, S2, S4
VSUB.F32        S1, S0, S1
VMUL.F32        S4, S3, S3
VMLA.F32        S4, S2, S2
VMOV.F32        S5, S4
VMLA.F32        S5, S1, S1
VSQRT.F32       S0, S5
VLDR            S5, [R4,#0x120]
VMUL.F32        S5, S5, S16
VMUL.F32        S6, S5, S6
VCMPE.F32       S6, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_2A4FD4
LDMFD           SP, {R0-R2}
ADD             R3, R4, #0x24 ; '$'
STM             R3, {R0-R2}
MOV             R0, R4
BL              sub_2A4E0C
LDR             R0, [R4,#0x1D4]
CMP             R0, #0
BEQ             loc_2A4F2C
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x1D4]
LDR             R0, [R4,#0x1DC]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R2, [R4,#0x110]
LDRB            R1, [R4,#0x115]
LDR             R0, [R5]
BL              sub_52C9F4
CMP             R0, #0
NOP
BEQ             loc_2A4FC4
LDR             R0, [R5]
MOV             R2, #1
MOV             R1, #0xFB
BL              sub_52F9B4
STR             R0, [R4,#0x1D4]
MOV             R0, R4
BL              sub_2A4E0C
LDR             R0, [R5]
LDR             R3, =0xFFE683CC
LDR             R1, =0x3004D
MOV             R2, #0
VLDR            S0, =0.0
SUB             R0, R0, R3
BL              sub_503414
MOVS            R5, R0
NOP
BEQ             loc_2A4FC4
LDR             R0, =0x401
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
VLDR            S1, [R4,#0x24]
LDR             R0, =unk_6EB568
ADD             R1, R5, #0x10
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
BL              sub_51CC84
ADD             SP, SP, #0xC
MOV             R0, #1
VPOP            {D8}
POP             {R4,R5,PC}
VMLA.F32        S4, S1, S1
VCMPE.F32       S5, S0
MOV             R0, R4
VSQRT.F32       S6, S4
VDIV.F32        S4, S17, S6
VMUL.F32        S3, S3, S4
VMUL.F32        S2, S2, S4
VMUL.F32        S1, S1, S4
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S5
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
VLDR            S3, [R4,#0x24]
VADD.F32        S0, S3, S0
VSTR            S0, [R4,#0x24]
VLDR            S0, [R4,#0x28]
VADD.F32        S0, S0, S2
VSTR            S0, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x2C]
BL              sub_2A4E0C
ADD             SP, SP, #0xC
MOV             R0, #0
VPOP            {D8}
POP             {R4,R5,PC}
