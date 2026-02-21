PUSH            {R4-R12,LR}
MOV             R6, R0
MOV             R5, R1
MOV             R11, R3
VPUSH           {D8-D13}
ADD             R0, SP, #0x58+arg_8
VMOV.F32        S16, S0
VMOV.F32        S24, S1
LDR             R8, [SP,#0x58+arg_4]
LDM             R0, {R7,R9,R10}
LDR             R4, [SP,#0x58+arg_14]
VLDR            S23, [SP,#0x58+arg_0]
CMP             R8, #0
VLDM            R2, {S20-S22}
BEQ             loc_22F778
CMP             R8, #1
BEQ             loc_22F79C
CMP             R8, #2
BNE             loc_22F7E0
B               loc_22F7C0
VLDR            S3, [R5,#0x10C]
VLDR            S2, [R5,#0x110]
ADD             R0, R6, #0x10C
VADD.F32        S3, S3, S21
VADD.F32        S2, S2, S22
VLDM            R0, {S0-S1}
VSUB.F32        S19, S0, S3
VSUB.F32        S18, S2, S1
B               loc_22F7E0
VLDR            S2, [R5,#0x108]
VLDR            S3, [R5,#0x110]
VLDR            S1, [R6,#0x108]
VADD.F32        S2, S2, S20
VADD.F32        S3, S3, S22
VLDR            S0, [R6,#0x110]
VSUB.F32        S19, S1, S2
VSUB.F32        S18, S0, S3
B               loc_22F7E0
VLDR            S3, [R5,#0x108]
VLDR            S2, [R5,#0x10C]
ADD             R0, R6, #0x108
VADD.F32        S3, S3, S20
VADD.F32        S2, S2, S21
VLDM            R0, {S0-S1}
VSUB.F32        S19, S0, S3
VSUB.F32        S18, S2, S1
VMOV.F32        S1, S19
VMOV.F32        S0, S18
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S1, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S26, =6.2832
VLDR            S25, =0.15915
CMP             R11, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S17, S0, S26
BEQ             loc_22F8DC
VMOV            S0, R7
VCVT.F32.S32    S1, S0
VMOV.F32        S0, S17
VMLA.F32        S0, S16, S1
VMUL.F32        S1, S19, S19
LDRB            R0, [R4]
MOV             R2, #0
STR             R2, [R4,#4]
STRB            R7, [R4,#1]
BIC             R0, R0, #0xA
ORR             R0, R0, #5
ORR             R0, R0, R9,LSL#3
VSTR            S0, [R4,#0xC]
VSTR            S17, [R4,#8]
VMLA.F32        S1, S18, S18
BIC             R0, R0, #0x30 ; '0'
MOV             R1, #0xC0
VSTR            S17, [R4,#0x10]
ORR             R0, R0, R10,LSL#5
AND             R1, R1, R8,LSL#6
VSTR            S16, [R4,#0x14]
BIC             R0, R0, #0xC0
VSTR            S24, [R4,#0x18]
ORR             R0, R0, R1
VSQRT.F32       S0, S1
VMOV.F32        S2, S24
VMOV.F32        S1, S17
STRB            R0, [R4]
MOV             R0, R6
BL              sub_22F6D4
VMUL.F32        S1, S0, S24
ADD             R1, R4, #0x1C
MOV             R0, R6
VSTM            R1, {S0-S1}
BL              sub_23032C
VMUL.F32        S2, S16, S25
VSTR            S0, [R4,#0x24]
VCVT.F32.S32    S1, S23
VCVT.F32.S32    S3, S23
ADD             R0, R4, #0x28 ; '('
VMUL.F32        S0, S0, S2
VSTR            S3, [R4,#0x3C]
VSTM            R0, {S20-S22}
MOV             R0, #1
STR             R5, [R4,#0x34]
VDIV.F32        S2, S0, S1
VSTR            S2, [R4,#0x38]
VPOP            {D8-D13}
POP             {R4-R12,PC}
VMOV.F32        S1, S26
VMOV.F32        S0, S16
BL              sub_5F63A4
CMP             R7, #0
VSUBGT.F32      S1, S0, S17
VSUBLE.F32      S1, S17, S0
VLDR            S2, =0.0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S2, S16, S25
VADDCC.F32      S1, S1, S26
VCVT.S32.F32    S2, S2
VCVT.F32.S32    S2, S2
VMLA.F32        S1, S2, S26
VMOV.F32        S16, S1
B               loc_22F828
