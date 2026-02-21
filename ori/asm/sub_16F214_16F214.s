PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R0, R0, #0x2600
ADD             R0, R0, #0x86
LDR             R4, =off_6D1648
VPUSH           {D8-D11}
SUB             SP, SP, #0x3C
LDRB            R0, [R0]
VLDR            S22, =0.0
CMP             R0, #2
MOVEQ           R0, #0x19
MOVNE           R0, #0x14
VMOV            S0, R0
VMOVEQ.F32      S20, S22
LDR             R0, [R4]
VLDRNE          S20, =0.15
VCVT.F32.U32    S21, S0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_16F4B8
LDR             R0, [R5,#0x5E0]
TST             R0, #1
BEQ             loc_16F4B8
ADD             R6, R5, #0x2400
ADD             R6, R6, #0x28C
MOV             R7, #0
LDR             R0, [R6]
CMP             R0, #0
LDR             R0, =0x26C1
MOVEQ           R1, #1
MOVNE           R1, #0
STR             R1, [SP,#0x80+var_64]
LDRB            R0, [R0,R5]
CMP             R0, #0
BNE             loc_16F4B8
VLDR            S0, [R5,#0x108]
VLDR            S1, [R5,#0x118]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_16F2E8
VLDR            S0, [R5,#0x10C]
VLDR            S1, [R5,#0x11C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_16F2E8
VLDR            S0, [R5,#0x110]
VLDR            S1, [R5,#0x120]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_16F4B8
VMOV.F32        S16, S22
LDR             R0, [R4]
VLDR            S18, =-1.0
VMOV.F32        S17, S16
VMOV.F32        S19, S16
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R4, [R0]
LDR             R0, [R4]
TST             R0, #1
BNE             loc_16F3EC
MOV             R8, #0
MOV             R9, #1
ADD             R11, SP, #0x80+var_70
ADD             R10, SP, #0x80+var_60
LDR             R0, [R6]
CMP             R0, R4
BEQ             loc_16F3E0
LDR             R0, [R4]
TST             R0, #2
BNE             loc_16F3E0
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
TST             R0, #1
BEQ             loc_16F3E0
TST             R0, #0x400
BNE             loc_16F3E0
VMOV.F32        S23, S22
ADD             R2, R4, #8
ADD             R0, SP, #0x80+var_5C
VLDM            R2, {S0-S1}
ADD             R2, R4, #0x10
VSTR            S23, [SP,#0x80+var_54]
ADD             R1, SP, #0x80+var_50
VSTM            R0, {S0-S1}
ADD             R3, R5, #0x108
VLDM            R2, {S0-S1}
ADD             R2, R5, #0x118
VSTR            S23, [SP,#0x80+var_48]
VSTM            R1, {S0-S1}
VMOV.F32        S0, S21
STR             R8, [SP,#0x80+var_74]
STR             R9, [SP,#0x80+var_78]
STR             R10, [SP,#0x80+var_7C]
STR             R11, [SP,#0x80+var_80]
BL              sub_597B78
CMP             R0, #0
NOP
BEQ             loc_16F3E0
VLDR            S0, [SP,#0x80+var_60]
VCMPE.F32       S18, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_16F3CC
VCMPE.F32       S23, S18
VMRS            APSR_nzcv, FPSCR
BLE             loc_16F3E0
ADD             R0, SP, #0x80+var_70
VMOV.F32        S18, S0
VLDM            R0, {S16-S17}
MOV             R7, R4
VLDR            S19, [SP,#0x80+var_68]
LDR             R0, [R4,#0x34]!
TST             R0, #1
BEQ             loc_16F328
VCMPE.F32       S18, S22
VMRS            APSR_nzcv, FPSCR
BCC             loc_16F4B8
VSTR            S19, [R5,#0x110]
ADD             R0, R5, #0x108
ADD             R4, R5, #0x400
VSTM            R0, {S16-S17}
STR             R7, [R6]
VLDR            S4, [R5,#0x108]
VLDR            S5, [R5,#0x118]
VLDR            S3, [R5,#0x10C]
VLDR            S2, [R5,#0x11C]
VLDR            S0, [R5,#0x110]
VLDR            S1, [R5,#0x120]
VSUB.F32        S4, S4, S5
VSUB.F32        S2, S3, S2
VSUB.F32        S1, S0, S1
VLDR            S3, =2.0
VLDR            S0, =0.95
VLDR            S5, [R4,#0xC4]
VMUL.F32        S3, S20, S3
VMUL.F32        S0, S5, S0
VSTR            S0, [R4,#0xC4]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BCC             loc_16F47C
VMUL.F32        S0, S4, S4
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BLS             loc_16F47C
LDR             R0, [SP,#0x80+var_64]
CMP             R0, #0
BNE             loc_16F490
LDR             R0, [R5]
LDR             R1, [R0,#0x220]
MOV             R0, R5
BLX             R1
VSTR            S22, [R4,#0xC4]
VCMPE.F32       S18, S22
VMRS            APSR_nzcv, FPSCR
BLE             loc_16F4B8
LDR             R0, [R5]
LDR             R1, [R0,#0x428]
ADD             SP, SP, #0x3C ; '<'
MOV             R0, R5
VPOP            {D8-D11}
POP             {R4-R11,LR}
BX              R1
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D11}
POP             {R4-R11,PC}
