PUSH            {R4-R11,LR}
MOV             R6, R0
LDR             R10, =off_6D1648
VPUSH           {D8-D9}
SUB             SP, SP, #0x6C
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
VLDR            S16, =0.0
LDR             R0, [R0]
ADD             R8, R6, #0x400
CMP             R0, #0
BEQ             loc_16EE00
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R4, [R0]
LDR             R0, [R4]
TST             R0, #1
BNE             loc_16EE00
MOV             R9, #0
VLDR            S17, =1.0
ADD             R11, SP, #0xA0+var_90
LDR             R0, [R4]
TST             R0, #2
BNE             loc_16EDF4
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
TST             R0, #1
BEQ             loc_16EDF4
TST             R0, #0x400
BNE             loc_16EDF4
VLDR            S0, [R6,#0x108]
VLDR            S1, [R8,#0x1BC]
VLDR            S2, [R6,#0x10C]
VLDR            S3, [R8,#0x1CC]
VADD.F32        S1, S0, S1
VMOV.F32        S18, S16
VADD.F32        S0, S2, S3
ADD             R0, SP, #0xA0+var_84
MOV             R5, #0
VSTR            S1, [SP,#0xA0+var_90]
VSTR            S0, [SP,#0xA0+var_8C]
VSTR            S18, [SP,#0xA0+var_88]
VLDR            S2, [R6,#0x10C]
VLDR            S1, [R8,#0x1CC]
VLDR            S0, [R6,#0x108]
VLDR            S3, [R8,#0x1C0]
VADD.F32        S1, S2, S1
VSTR            S18, [SP,#0xA0+var_7C]
VADD.F32        S0, S0, S3
VSTM            R0, {S0-S1}
ADD             R0, SP, #0xA0+var_78
VLDR            S0, [R6,#0x108]
VLDR            S2, [R8,#0x1C0]
VLDR            S1, [R6,#0x10C]
VSTR            S18, [SP,#0xA0+var_70]
VADD.F32        S0, S0, S2
VSTM            R0, {S0-S1}
VLDR            S1, [R8,#0x1BC]
VLDR            S0, [R6,#0x108]
LDR             R0, [R6,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_6C]
STR             R0, [SP,#0xA0+var_68]
VSTR            S18, [SP,#0xA0+var_64]
LDRD            R2, R3, [R4,#8]
ADD             R0, SP, #0xA0+var_50
ADD             R1, SP, #0xA0+var_44
STRD            R2, R3, [SP,#0xA0+var_50]
VSTR            S18, [SP,#0xA0+var_48]
LDRD            R2, R3, [R4,#0x10]
STRD            R2, R3, [SP,#0xA0+var_44]
ADD             R3, R5, #1
VSTR            S18, [SP,#0xA0+var_3C]
MOV             R12, R3,ASR#31
ADD             R2, R5, R5,LSL#1
ADD             R12, R3, R12,LSR#30
BIC             R12, R12, #3
SUB             R3, R3, R12
ADD             R2, R11, R2,LSL#2
ADD             R3, R3, R3,LSL#1
STR             R9, [SP,#0xA0+var_A0]
ADD             R3, R11, R3,LSL#2
STR             R9, [SP,#0xA0+var_9C]
STR             R9, [SP,#0xA0+var_98]
BL              sub_5984E0
CMP             R0, #0
NOP
BEQ             loc_16ED1C
LDR             R0, [R4]
TST             R0, #0x20
BEQ             loc_16ECE8
TST             R0, #4
BEQ             loc_16ED2C
TST             R0, #8
BEQ             loc_16ECF8
TST             R0, #0x10
BEQ             loc_16ED50
TST             R0, #4
BEQ             loc_16ED08
TST             R0, #0x20
BEQ             loc_16ED6C
TST             R0, #0x10
BEQ             loc_16EDA8
TST             R0, #8
BEQ             loc_16ED88
B               loc_16EDA8
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_16EC74
B               loc_16EDF4
VLDR            S1, [R6,#0x10C]
VLDR            S2, [R8,#0x1CC]
VLDR            S3, [R6,#0x108]
VLDR            S0, [R8,#0x1C0]
VADD.F32        S1, S1, S2
ADD             R0, SP, #0xA0+var_58
VADD.F32        S0, S3, S0
VSTM            R0, {S0-S1}
B               loc_16EDA8
VLDR            S1, [R8,#0x1BC]
VLDR            S0, [R6,#0x108]
LDR             R0, [R6,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_58]
STR             R0, [SP,#0xA0+var_54]
B               loc_16EDA8
VLDR            S1, [R8,#0x1C0]
VLDR            S0, [R6,#0x108]
LDR             R0, [R6,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_58]
STR             R0, [SP,#0xA0+var_54]
B               loc_16EDA8
ADD             R0, R6, #0x108
VLDR            S2, [R8,#0x1CC]
VLDR            S3, [R8,#0x1BC]
VLDM            R0, {S0-S1}
ADD             R0, SP, #0xA0+var_58
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VSTM            R0, {S0-S1}
ADD             R2, R4, #0x10
ADD             R1, R4, #8
ADD             R0, SP, #0xA0+var_58
BL              sub_597614
VLDR            S1, [R4,#0x1C]
VNEG.F32        S2, S1
VLDR            S1, [R4,#0x18]
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S1, S1
VSQRT.F32       S4, S3
VDIV.F32        S3, S17, S4
VMUL.F32        S2, S2, S3
VMUL.F32        S1, S1, S3
VLDR            S3, [R6,#0x108]
VMLA.F32        S3, S2, S0
VSTR            S3, [R6,#0x108]
VLDR            S2, [R6,#0x10C]
VMLA.F32        S2, S1, S0
VSTR            S2, [R6,#0x10C]
LDR             R0, [R4,#0x34]!
TST             R0, #1
BEQ             loc_16EBC8
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x170]
STR             R0, [SP,#0xA0+var_94]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x174]
STR             R0, [SP,#0xA0+var_60]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16400
ADD             R0, R0, #0x4A ; 'J'
LDRB            R0, [R0]
CMP             R0, #0
BNE             loc_16EE64
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0xA0+var_60
ADD             R2, SP, #0xA0+var_94
MOV             R1, R6
BL              sub_21DC20
LDR             R0, =0x2686
LDR             R1, [SP,#0xA0+var_94]
LDR             R4, [SP,#0xA0+var_60]
ADD             R2, R0, #0x12
LDRB            R3, [R0,R6]
LDRB            R0, [R2,R6]
CMP             R3, #1
BNE             loc_16EEB8
CMP             R0, #0
BEQ             loc_16EEB8
CMP             R0, #1
BEQ             loc_16EEE8
CMP             R0, #2
BEQ             loc_16EED0
CMP             R0, #3
BNE             loc_16EF20
B               loc_16EF00
DCD off_6D1648
DCFS 0.0
DCFS 1.0
DCD 0x2686
VLDR            S0, [R6,#0x10C]
VLDR            S1, [R6,#0x11C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16EF14
B               loc_16EF1C
VLDR            S1, [R6,#0x10C]
VLDR            S0, [R6,#0x11C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_16EF14
B               loc_16EF1C
VLDR            S0, [R6,#0x108]
VLDR            S1, [R6,#0x118]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16EF14
B               loc_16EF1C
VLDR            S0, [R6,#0x108]
VLDR            S1, [R6,#0x118]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_16EF1C
MOV             R7, #1
B               loc_16EF20
MOV             R7, #0
SXTB            R0, R7
CMP             R0, #0
MOVNE           R4, R1
CMP             R4, #0
BEQ             loc_16F034
ADD             R5, SP, #0xA0+var_88
VLDR            S17, =0.5
ADD             R9, SP, #0xA0+var_8C
STR             R5, [SP,#0xA0+var_9C]
STR             R9, [SP,#0xA0+var_A0]
LDR             R0, [R6]
ADD             R3, SP, #0xA0+var_90
ADD             R2, SP, #0xA0+var_98
MOV             R1, R4
LDR             R12, [R0,#0x430]
MOV             R0, R6
BLX             R12
CMP             R0, #0
LDRBNE          R0, [SP,#0xA0+var_98]
CMPNE           R0, #0
BEQ             loc_16F01C
ADD             R0, R4, #0x400
VLDR            S0, [R6,#0x108]
VLDR            S4, [R8,#0x224]
VLDR            S2, [R4,#0x108]
VLDR            S1, [R0,#0x228]
VADD.F32        S3, S0, S4
VADD.F32        S1, S2, S1
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BLS             loc_16F01C
VLDR            S5, [R0,#0x224]
VLDR            S6, [R8,#0x228]
VADD.F32        S7, S2, S5
VADD.F32        S3, S0, S6
VCMPE.F32       S3, S7
VMRS            APSR_nzcv, FPSCR
BLS             loc_16F01C
VLDR            S5, [R6,#0x10C]
VLDR            S8, [R8,#0x234]
VLDR            S3, [R4,#0x10C]
VADD.F32        S9, S5, S8
VCMPE.F32       S9, S3
VMRS            APSR_nzcv, FPSCR
BLS             loc_16F01C
VLDR            S9, [R0,#0x234]
VADD.F32        S10, S3, S9
VCMPE.F32       S10, S5
VMRS            APSR_nzcv, FPSCR
BLS             loc_16F01C
VSUB.F32        S11, S5, S3
VSUB.F32        S2, S0, S2
VMLS.F32        S11, S9, S17
VABS.F32        S0, S2
VABS.F32        S5, S11
VCMPE.F32       S0, S5
VMRS            APSR_nzcv, FPSCR
BLE             loc_16F070
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S0, S1, S4
VSUBLE.F32      S0, S7, S6
VSTR            S0, [R6,#0x108]
SXTB            R0, R7
CMP             R0, #0
LDRNE           R4, [R4,#0xC]
LDREQ           R4, [R4,#0x10]
CMP             R4, #0
BNE             loc_16EF40
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0xA0+var_60
ADD             R2, SP, #0xA0+var_94
MOV             R1, R6
BL              sub_21DF60
ADD             R0, R6, #0x108
ADD             R6, R6, #0x118
LDM             R0, {R0-R2}
STM             R6, {R0-R2}
ADD             SP, SP, #0x6C ; 'l'
VPOP            {D8-D9}
POP             {R4-R11,PC}
VCMPE.F32       S11, S16
VMRS            APSR_nzcv, FPSCR
VSUBLE.F32      S0, S3, S8
VSTRGT          S10, [R6,#0x10C]
VSTRLE          S0, [R6,#0x10C]
B               loc_16F01C
