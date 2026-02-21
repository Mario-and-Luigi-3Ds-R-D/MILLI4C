PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8-D12}
SUB             SP, SP, #0x1C
LDR             R1, [R0,#8]
VLDR            S24, =1.0
ADD             R0, R1, #0x400
ADD             R0, R0, #0xCC
LDRSH           R2, [R0,#2]
LDRSH           R0, [R0]
VMOV            S1, R2
VMOV            S0, R0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S24
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1BDAE0
LDR             R0, =0x4C8
LDRH            R0, [R0,R1]
CMP             R0, #0xFE
CMPNE           R0, #0
VLDREQ          S23, =30.0
VLDREQ          S17, =15.0
BNE             loc_1BDAE0
LDR             R0, [R4]
MOV             R2, SP
MOV             R1, #0xFF
LDR             R3, [R0,#0x54]
MOV             R0, R4
BLX             R3
LDR             R0, [R4,#4]
LDR             R5, =off_6D1648
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
ADD             R0, SP, #0x50+var_4C
VLDM            R0, {S18-S22}
BEQ             loc_1BDAB4
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
VMOV.F32        S16, S23
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VLDR            S0, [SP,#0x50+var_50]
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S17
VMOV.F32        S0, S18
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1EC
MOV             R1, #0
BL              sub_5A13F0
VMOV.F32        S16, S23
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S22
VMOV.F32        S3, S21
VMOV.F32        S2, S20
VMOV.F32        S1, S19
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
LDR             R0, [R4,#8]
ADD             R2, R0, #0x400
LDRB            R0, [R0,#0x4D0]
ADD             R2, R2, #0xCC
CMP             R0, #0
BNE             loc_1BDB38
LDRSH           R1, [R2,#2]
LDRH            R0, [R2]
VMOV            S0, R1
ADD             R0, R0, #1
SXTH            R0, R0
STRH            R0, [R2]
VCVT.F32.S32    S1, S0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S24
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BDB38
CMP             R1, R0
MOVLE           R0, R1
STRH            R0, [R2]
ADD             SP, SP, #0x1C
VPOP            {D8-D12}
POP             {R4,R5,PC}
