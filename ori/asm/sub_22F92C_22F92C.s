PUSH            {R4-R10,LR}
MOV             R5, R0
CMP             R1, #0
MOV             R10, R3
VPUSH           {D8-D13}
ADD             R0, SP, #0x50+arg_8
VMOV.F32        S16, S0
VMOV.F32        S24, S1
LDM             R0, {R6,R9}
LDR             R4, [SP,#0x50+arg_14]
LDR             R7, [SP,#0x50+arg_4]
LDR             R8, [SP,#0x50+arg_10]
VLDR            S23, [SP,#0x50+arg_0]
VLDM            R2, {S20-S22}
BEQ             loc_22F97C
ADD             R0, R5, #0x108
VLDM            R0, {S0-S2}
VADD.F32        S20, S20, S0
VADD.F32        S21, S21, S1
VADD.F32        S22, S22, S2
CMP             R7, #0
BEQ             loc_22F998
CMP             R7, #1
BEQ             loc_22F9AC
CMP             R7, #2
BNE             loc_22F9D0
B               loc_22F9C0
ADD             R0, R5, #0x10C
VLDM            R0, {S0-S1}
VSUB.F32        S19, S0, S21
VSUB.F32        S18, S22, S1
B               loc_22F9D0
VLDR            S1, [R5,#0x108]
VLDR            S0, [R5,#0x110]
VSUB.F32        S19, S1, S20
VSUB.F32        S18, S0, S22
B               loc_22F9D0
ADD             R0, R5, #0x108
VLDM            R0, {S0-S1}
VSUB.F32        S19, S0, S20
VSUB.F32        S18, S21, S1
VMOV.F32        S1, S19
VMOV.F32        S0, S18
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S1, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S26, =6.2832
VLDR            S25, =0.15915
CMP             R10, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S17, S0, S26
BEQ             loc_22FACC
VMOV            S0, R6
VCVT.F32.S32    S1, S0
VMOV.F32        S0, S17
VMLA.F32        S0, S16, S1
VMUL.F32        S1, S19, S19
LDRB            R0, [R4]
MOV             R1, #0xC0
AND             R1, R1, R7,LSL#6
MOV             R7, #0
STR             R7, [R4,#4]
STRB            R6, [R4,#1]
BIC             R0, R0, #0xA
VSTR            S0, [R4,#0xC]
ORR             R0, R0, #5
VMLA.F32        S1, S18, S18
ORR             R0, R0, R9,LSL#3
VSTR            S17, [R4,#8]
BIC             R0, R0, #0x30 ; '0'
VSTR            S17, [R4,#0x10]
ORR             R0, R0, R8,LSL#5
VSTR            S16, [R4,#0x14]
BIC             R0, R0, #0xC0
VSTR            S24, [R4,#0x18]
ORR             R0, R0, R1
VSQRT.F32       S0, S1
VMOV.F32        S2, S24
VMOV.F32        S1, S17
STRB            R0, [R4]
MOV             R0, R5
BL              sub_22F6D4
VMUL.F32        S1, S0, S24
ADD             R1, R4, #0x1C
MOV             R0, R5
VSTM            R1, {S0-S1}
BL              sub_23032C
VMUL.F32        S2, S16, S25
VSTR            S0, [R4,#0x24]
VCVT.F32.S32    S1, S23
VCVT.F32.S32    S3, S23
ADD             R0, R4, #0x28 ; '('
VSTM            R0, {S20-S22}
MOV             R0, #1
STR             R7, [R4,#0x34]!
ADD             R4, R4, #4
VMUL.F32        S0, S0, S2
VDIV.F32        S2, S0, S1
VSTM            R4, {S2-S3}
VPOP            {D8-D13}
POP             {R4-R10,PC}
VMOV.F32        S1, S26
VMOV.F32        S0, S16
BL              sub_5F63A4
CMP             R6, #0
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
B               loc_22FA18
