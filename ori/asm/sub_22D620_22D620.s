PUSH            {R4,R5,LR}
MOV             R4, R1
LDR             R1, [R1]
SUB             SP, SP, #0xC
MOV             R5, R0
TST             R1, #7
BEQ             loc_22D6C0
TST             R1, #8
BNE             loc_22D6C0
TST             R1, #0x20
BEQ             loc_22D6C0
LDR             R0, [R4,#0x34]
CMP             R0, #0
BEQ             loc_22D774
TST             R1, #0x10
BEQ             loc_22D6C8
VLDR            S0, [R4,#0xC]
VLDR            S1, [R4,#0x38]
VCVT.F32.S32    S0, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_22D6C0
ADD             R0, R0, #0x108
VLDR            S0, [R4,#0x30]
VLDR            S4, [R4,#0x2C]
VLDR            S5, [R4,#0x28]
MOV             R1, SP
VLDM            R0, {S1-S3}
VADD.F32        S1, S1, S5
VADD.F32        S0, S3, S0
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x18+var_10]
VSTMEA          SP, {S1-S2}
LDR             R0, [R5]
LDR             R2, [R0,#0x120]
MOV             R0, R5
BLX             R2
LDR             R0, [R4]
BIC             R0, R0, #7
STR             R0, [R4]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
ADD             R0, R0, #0x108
VLDR            S5, [R4,#0x28]
VLDR            S1, [R0]
VLDR            S4, [R4,#0x2C]
VLDR            S0, [R0,#4]
VLDR            S2, [R4,#0x30]
VLDR            S3, [R0,#8]
VADD.F32        S1, S1, S5
VADD.F32        S0, S0, S4
VADD.F32        S2, S3, S2
MOV             R2, SP
MOV             R1, R4
VSTR            S1, [SP,#0x18+var_18]
VSTR            S0, [SP,#0x18+var_14]
VSTR            S2, [SP,#0x18+var_10]
LDR             R0, [R5]
LDR             R3, [R0,#0x118]
MOV             R0, R5
BLX             R3
VLDR            S0, [R5,#0x108]
VLDR            S1, [SP,#0x18+var_18]
LDR             R0, [R4]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
ORRNE           R0, R0, #1
BICEQ           R0, R0, #1
STR             R0, [R4]
VLDR            S0, [R5,#0x10C]
VLDR            S1, [SP,#0x18+var_14]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
ORRNE           R0, R0, #2
BICEQ           R0, R0, #2
STR             R0, [R4]
VLDR            S0, [R5,#0x110]
VLDR            S1, [SP,#0x18+var_10]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
ORRNE           R0, R0, #4
BICEQ           R0, R0, #4
STR             R0, [R4]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
TST             R1, #0x10
BEQ             loc_22D7BC
VLDR            S0, [R4,#0xC]
VLDR            S1, [R4,#0x38]
VCVT.F32.S32    S0, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_22D6C0
LDR             R0, [R5]
ADD             R1, R4, #0x28 ; '('
LDR             R2, [R0,#0x124]
MOV             R0, R5
BLX             R2
LDR             R0, [R4]
BIC             R0, R0, #7
STR             R0, [R4]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
ADD             R0, R4, #0x28 ; '('
LDM             R0, {R0-R2}
STMEA           SP, {R0-R2}
MOV             R2, SP
LDR             R0, [R5]
MOV             R1, R4
LDR             R3, [R0,#0x11C]
MOV             R0, R5
BLX             R3
LDR             R0, [R4]
TST             R0, #1
BEQ             loc_22D804
VLDR            S0, [R5,#0x108]
VLDR            S1, [SP,#0x18+var_18]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BICEQ           R0, R0, #1
STREQ           R0, [R4]
TST             R0, #2
BEQ             loc_22D824
VLDR            S0, [R5,#0x10C]
VLDR            S1, [SP,#0x18+var_14]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BICEQ           R0, R0, #2
STREQ           R0, [R4]
TST             R0, #4
BEQ             loc_22D844
VLDR            S0, [R5,#0x110]
VLDR            S1, [SP,#0x18+var_10]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BICEQ           R0, R0, #4
STREQ           R0, [R4]
TST             R0, #7
BEQ             loc_22D6C0
VLDR            S3, [R4,#0x44]
VLDR            S0, =0.0
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S0
VLDRGT          S2, [R4,#0x38]
BLE             loc_22D6C0
VADD.F32        S2, S3, S2
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VADD.F32        S0, S0, S2
BGT             loc_22D868
VLDR            S3, [R4,#0x28]
VLDR            S6, [R5,#0x108]
ADD             R0, R4, #0x2C ; ','
ADD             R5, R5, #0x10C
VSUB.F32        S3, S3, S6
VLDM            R0, {S1-S2}
LDR             R0, [R4]
VLDM            R5, {S4-S5}
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S5
VMUL.F32        S3, S3, S3
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S2, S2
VSQRT.F32       S1, S3
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
ORRGE           R0, R0, #0x40 ; '@'
BICLT           R0, R0, #0x40 ; '@'
B               loc_22D768
