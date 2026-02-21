PUSH            {R4-R10,LR}
MOV             R5, R0
CMP             R1, #0
MOV             R8, R3
VPUSH           {D8-D14}
ADD             R0, SP, #0x58+arg_4
VMOV.F32        S16, S0
VMOV.F32        S24, S1
VMOV.F32        S27, S2
VMOV.F32        S28, S3
VMOV.F32        S29, S4
VMOV.F32        S23, S5
LDM             R0, {R6,R9,R10}
LDR             R4, [SP,#0x58+arg_10]
LDR             R7, [SP,#0x58+arg_0]
VLDM            R2, {S20-S22}
BEQ             loc_22FDC4
ADD             R0, R5, #0x108
VLDM            R0, {S0-S2}
VADD.F32        S20, S20, S0
VADD.F32        S21, S21, S1
VADD.F32        S22, S22, S2
CMP             R7, #0
BEQ             loc_22FDE0
CMP             R7, #1
BEQ             loc_22FDF4
CMP             R7, #2
BNE             loc_22FE18
B               loc_22FE08
ADD             R0, R5, #0x10C
VLDM            R0, {S0-S1}
VSUB.F32        S19, S0, S21
VSUB.F32        S18, S22, S1
B               loc_22FE18
VLDR            S1, [R5,#0x108]
VLDR            S0, [R5,#0x110]
VSUB.F32        S19, S1, S20
VSUB.F32        S18, S0, S22
B               loc_22FE18
ADD             R0, R5, #0x108
VLDM            R0, {S0-S1}
VSUB.F32        S19, S0, S20
VSUB.F32        S18, S21, S1
VLDR            S25, =0.0
VCMP.F32        S19, S25
VMRS            APSR_nzcv, FPSCR
VCMPEQ.F32      S18, S25
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_22FE80
VMOV.F32        S1, S19
VMOV.F32        S0, S18
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S1, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S26, =6.2832
CMP             R8, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S17, S0, S26
BEQ             loc_22FE8C
VMOV            S0, R6
VCVT.F32.S32    S1, S0
VMOV.F32        S0, S17
VMLA.F32        S0, S16, S1
VCMP.F32        S16, S25
VMRS            APSR_nzcv, FPSCR
BNE             loc_22FECC
VPOP            {D8-D14}
MOV             R0, #0
POP             {R4-R10,PC}
VMOV.F32        S1, S26
VMOV.F32        S0, S16
BL              sub_5F63A4
CMP             R6, #0
VSUBGT.F32      S1, S0, S17
VSUBLE.F32      S1, S17, S0
VCMPE.F32       S1, S25
VMRS            APSR_nzcv, FPSCR
VLDR            S2, =0.15915
VADDCC.F32      S1, S1, S26
VMUL.F32        S2, S16, S2
VCVT.S32.F32    S2, S2
VCVT.F32.S32    S2, S2
VMLA.F32        S1, S2, S26
VMOV.F32        S16, S1
B               loc_22FE74
VMUL.F32        S1, S19, S19
LDRB            R0, [R4]
MOV             R8, #0
STR             R8, [R4,#4]
STRB            R6, [R4,#1]
VSTR            S0, [R4,#0xC]
BIC             R0, R0, #0xE
ORR             R0, R0, #1
ORR             R0, R0, R9,LSL#3
VSTR            S16, [R4,#0x14]
VMLA.F32        S1, S18, S18
BIC             R0, R0, #0x30 ; '0'
MOV             R1, #0xC0
VSTR            S17, [R4,#8]
ORR             R0, R0, R10,LSL#5
AND             R1, R1, R7,LSL#6
VSTR            S17, [R4,#0x10]
BIC             R0, R0, #0xC0
VSTR            S23, [R4,#0x18]
ORR             R0, R0, R1
VSQRT.F32       S0, S1
VMOV.F32        S2, S23
VMOV.F32        S1, S17
STRB            R0, [R4]
MOV             R0, R5
BL              sub_22F6D4
VMUL.F32        S1, S0, S23
ADD             R1, R4, #0x1C
MOV             R0, R5
VSTM            R1, {S0-S1}
BL              sub_23032C
VCMPE.F32       S24, S25
VSTR            S0, [R4,#0x24]
VSTR            S20, [R4,#0x28]
ADD             R0, R4, #0x2C ; ','
STR             R8, [R4,#0x34]
VMRS            APSR_nzcv, FPSCR
VSTM            R0, {S21-S22}
BLE             loc_22FF78
VSTR            S24, [R4,#0x38]
ADD             R4, R4, #0x3C ; '<'
VSTM            R4, {S27-S29}
B               loc_22FF98
LDR             R1, [R5,#0x47C]
STR             R1, [R4,#0x38]
LDR             R1, [R5,#0x484]
STR             R1, [R4,#0x3C]
LDR             R1, [R5,#0x48C]
STR             R1, [R4,#0x40]
LDR             R0, [R5,#0x494]
STR             R0, [R4,#0x44]
MOV             R0, #1
VPOP            {D8-D14}
POP             {R4-R10,PC}
