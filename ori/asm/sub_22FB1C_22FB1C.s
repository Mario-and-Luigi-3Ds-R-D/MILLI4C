PUSH            {R4-R12,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R9, R3
VPUSH           {D8-D13}
ADD             R0, SP, #0x58+arg_4
VMOV.F64        D11, D0
VMOV.F32        S24, S2
LDR             R8, [SP,#0x58+arg_0]
LDM             R0, {R7,R10,R11}
LDR             R4, [SP,#0x58+arg_10]
CMP             R8, #0
VLDM            R2, {S19-S21}
BEQ             loc_22FB68
CMP             R8, #1
BEQ             loc_22FB8C
CMP             R8, #2
BNE             loc_22FBD0
B               loc_22FBB0
VLDR            S3, [R6,#0x10C]
VLDR            S2, [R6,#0x110]
ADD             R0, R5, #0x10C
VADD.F32        S3, S3, S20
VADD.F32        S2, S2, S21
VLDM            R0, {S0-S1}
VSUB.F32        S18, S0, S3
VSUB.F32        S17, S2, S1
B               loc_22FBD0
VLDR            S2, [R6,#0x108]
VLDR            S3, [R6,#0x110]
VLDR            S1, [R5,#0x108]
VADD.F32        S2, S2, S19
VADD.F32        S3, S3, S21
VLDR            S0, [R5,#0x110]
VSUB.F32        S18, S1, S2
VSUB.F32        S17, S0, S3
B               loc_22FBD0
VLDR            S3, [R6,#0x108]
VLDR            S2, [R6,#0x10C]
ADD             R0, R5, #0x108
VADD.F32        S3, S3, S19
VADD.F32        S2, S2, S20
VLDM            R0, {S0-S1}
VSUB.F32        S18, S0, S3
VSUB.F32        S17, S2, S1
VLDR            S25, =0.0
VCMP.F32        S18, S25
VMRS            APSR_nzcv, FPSCR
VCMPEQ.F32      S17, S25
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_22FC38
VMOV.F32        S1, S18
VMOV.F32        S0, S17
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S1, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S26, =6.2832
CMP             R9, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S16, S0, S26
BEQ             loc_22FC44
VMOV            S0, R7
VCVT.F32.S32    S1, S0
VMOV.F32        S0, S16
VMLA.F32        S0, S22, S1
VCMP.F32        S22, S25
VMRS            APSR_nzcv, FPSCR
BNE             loc_22FC84
VPOP            {D8-D13}
MOV             R0, #0
POP             {R4-R12,PC}
VMOV.F32        S1, S26
VMOV.F32        S0, S22
BL              sub_5F63A4
CMP             R7, #0
VSUBGT.F32      S1, S0, S16
VSUBLE.F32      S1, S16, S0
VCMPE.F32       S1, S25
VMRS            APSR_nzcv, FPSCR
VLDR            S2, =0.15915
VADDCC.F32      S1, S1, S26
VMUL.F32        S2, S22, S2
VCVT.S32.F32    S2, S2
VCVT.F32.S32    S2, S2
VMLA.F32        S1, S2, S26
VMOV.F32        S22, S1
B               loc_22FC2C
VMUL.F32        S1, S18, S18
LDRB            R0, [R4]
MOV             R2, #0
STR             R2, [R4,#4]
STRB            R7, [R4,#1]
VSTR            S0, [R4,#0xC]
BIC             R0, R0, #0xE
ORR             R0, R0, #1
ORR             R0, R0, R10,LSL#3
VSTR            S22, [R4,#0x14]
VMLA.F32        S1, S17, S17
BIC             R0, R0, #0x30 ; '0'
MOV             R1, #0xC0
VSTR            S16, [R4,#8]
ORR             R0, R0, R11,LSL#5
AND             R1, R1, R8,LSL#6
VSTR            S16, [R4,#0x10]
BIC             R0, R0, #0xC0
VSTR            S24, [R4,#0x18]
ORR             R0, R0, R1
VSQRT.F32       S0, S1
VMOV.F32        S2, S24
VMOV.F32        S1, S16
STRB            R0, [R4]
MOV             R0, R5
BL              sub_22F6D4
VMUL.F32        S1, S0, S24
ADD             R1, R4, #0x1C
MOV             R0, R5
VSTM            R1, {S0-S1}
BL              sub_23032C
VCMPE.F32       S23, S25
VSTR            S0, [R4,#0x24]
ADD             R0, R4, #0x28 ; '('
VSTM            R0, {S19-S21}
VMRS            APSR_nzcv, FPSCR
STR             R6, [R4,#0x34]
BLE             loc_22FD30
VSTR            S23, [R4,#0x38]
VSTR            S23, [R4,#0x40]
VSTR            S25, [R4,#0x3C]
VSTR            S25, [R4,#0x44]
B               loc_22FD50
LDR             R1, [R5,#0x47C]
STR             R1, [R4,#0x38]
LDR             R1, [R5,#0x48C]
STR             R1, [R4,#0x40]
LDR             R1, [R5,#0x484]
STR             R1, [R4,#0x3C]
LDR             R0, [R5,#0x494]
STR             R0, [R4,#0x44]
MOV             R0, #1
VPOP            {D8-D13}
POP             {R4-R12,PC}
