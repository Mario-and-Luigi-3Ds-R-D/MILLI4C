PUSH            {R4,R5,LR}
MOV             R4, R1
LDR             R1, [R1]
SUB             SP, SP, #0x64
MOV             R5, R0
TST             R1, #7
BEQ             loc_230934
TST             R1, #8
BNE             loc_230934
LDR             R0, [R4,#0x34]
CMP             R0, #0
BEQ             loc_2307F8
ADD             R0, R0, #0x108
VLDR            S5, [R4,#0x28]
VLDR            S2, [R0]
VLDR            S4, [R4,#0x2C]
VLDR            S1, [R0,#4]
VLDR            S0, [R4,#0x30]
VLDR            S3, [R0,#8]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VADD.F32        S0, S3, S0
ADD             R1, SP, #0x70+var_60
VSTR            S2, [SP,#0x70+var_18]
VSTR            S1, [SP,#0x70+var_14]
VSTR            S0, [SP,#0x70+var_10]
LDR             R0, [R4]
TST             R0, #0x10
BEQ             loc_2307BC
VLDR            S0, [R4,#0xC]
VLDR            S1, [R4,#0x38]
AND             R2, R0, #0x80
VCVT.F32.S32    S0, S0
AND             R3, R0, #0x20 ; ' '
MOV             R0, R2,LSR#7
MOV             R2, R3,LSR#5
STR             R2, [SP,#0x70+var_70]
STRD            R0, R1, [SP,#0x70+var_6C]
LDR             R0, [R5]
ADD             R2, SP, #0x70+var_18
MOV             R1, #0
VSUB.F32        S0, S1, S0
LDR             R12, [R0,#0xE4]
MOV             R0, R5
VCVT.S32.F32    S0, S0
VMOV            R3, S0
CMP             R3, #0
MOVLE           R3, #1
BLX             R12
LDR             R0, [R5]
ADD             R1, SP, #0x70+var_60
LDR             R2, [R0,#0xFC]
MOV             R0, R5
BLX             R2
B               loc_230928
AND             R2, R0, #0x80
STR             R1, [SP,#0x70+var_6C]
MOV             R2, R2,LSR#7
STR             R2, [SP,#0x70+var_70]
AND             R1, R0, #0x20 ; ' '
LDR             R0, [R5]
ADD             R2, R4, #0x38 ; '8'
MOV             R3, R1,LSR#5
VLDM            R2, {S0-S3}
ADD             R2, SP, #0x70+var_18
MOV             R1, #0
LDR             R12, [R0,#0xD4]
MOV             R0, R5
BLX             R12
B               loc_2307A4
TST             R1, #0x10
BNE             loc_230874
TST             R1, #0x40
BEQ             loc_230874
VLDR            S2, [R4,#0x28]
VLDR            S5, [R5,#0x108]
VLDR            S3, [R5,#0x110]
VLDR            S1, [R4,#0x30]
VLDR            S4, [R4,#0x2C]
VLDR            S0, [R5,#0x10C]
VSUB.F32        S2, S2, S5
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S4, S0
ADD             R0, SP, #0x70+var_6C
MOV             R2, R4
MOV             R1, SP
VSTR            S2, [SP,#0x70+var_70]
VSTM            R0, {S0-S1}
VLDR            S0, [R4,#0x38]
VLDR            S1, [R4,#0x44]
VADD.F32        S0, S0, S1
VNEG.F32        S1, S1
VSTR            S0, [R4,#0x38]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [R4,#0x38]
LDR             R0, [R5]
LDR             R3, [R0,#0x110]
MOV             R0, R5
BLX             R3
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0x114]
MOV             R0, R5
BLX             R2
LDR             R0, [R4]
TST             R0, #0x50
BNE             loc_230928
VLDR            S0, [R4,#0x3C]
VLDR            S1, =0.0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_230928
VLDR            S0, [R4,#0x38]
VLDR            S1, [R4,#0x40]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_230928
ADD             R0, R5, #0x10C
VLDR            S1, [R4,#0x28]
VLDR            S5, [R5,#0x108]
VLDR            S0, [R4,#0x2C]
VLDR            S2, [R4,#0x30]
VSUB.F32        S1, S1, S5
VLDM            R0, {S3-S4}
ADD             R0, R4, #0x38 ; '8'
MOV             R2, R4
MOV             R1, SP
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S2, S4
VSTR            S1, [SP,#0x70+var_70]
VSTR            S0, [SP,#0x70+var_6C]
VSTR            S2, [SP,#0x70+var_68]
VLDM            R0, {S0-S1}
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x38]
VLDR            S1, [R4,#0x40]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R4,#0x38]
LDR             R0, [R5]
LDR             R3, [R0,#0x110]
MOV             R0, R5
BLX             R3
LDR             R0, [R4,#0xC]
ADD             R0, R0, #1
STR             R0, [R4,#0xC]
ADD             SP, SP, #0x64 ; 'd'
POP             {R4,R5,PC}
