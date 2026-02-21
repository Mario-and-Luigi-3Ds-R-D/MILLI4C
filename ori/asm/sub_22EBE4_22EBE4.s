PUSH            {R4-R6}
CMP             R1, #1
LDR             R6, [SP,#0xC+arg_8]
LDR             R12, [SP,#0xC+arg_C]
LDRD            R4, R5, [SP,#0xC+arg_0]
VLDM            R2, {S3-S5}
BNE             loc_22EC14
ADD             R1, R0, #0xF0
VLDM            R1, {S0-S2}
VADD.F32        S3, S3, S0
VADD.F32        S4, S4, S1
VADD.F32        S5, S5, S2
VLDR            S2, [R0,#0xF0]
ADD             R1, R0, #0xF4
VLDR            S6, =0.0
VLDM            R1, {S0-S1}
LDRB            R1, [R12]
VSUB.F32        S2, S3, S2
VSUB.F32        S0, S4, S0
VSUB.F32        S1, S5, S1
VCMP.F32        S2, S6
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S7, S0
ORRNE           R1, R1, #1
BICEQ           R1, R1, #1
STRB            R1, [R12]
VCMP.F32        S7, S6
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S7, S1
ORRNE           R1, R1, #2
BICEQ           R1, R1, #2
STRB            R1, [R12]
VCMP.F32        S7, S6
VMRS            APSR_nzcv, FPSCR
ORRNE           R1, R1, #4
BICEQ           R1, R1, #4
TST             R1, #7
MOVEQ           R0, #0
STRB            R1, [R12]
BEQ             loc_22ED38
VMOV            S6, R3
VMOV.F32        S9, S2
VMOV.F32        S8, S0
BIC             R1, R1, #8
VMOV.F32        S7, S1
ORR             R1, R1, #0x10
VCVT.F32.S32    S6, S6
MOV             R2, #0
STRB            R1, [R12]
STR             R2, [R12,#0x38]
VLDR            S11, [R0,#0xF8]
ADD             R0, R0, #0xF0
ADD             R2, R12, #0x20 ; ' '
BIC             R1, R1, #0x20 ; ' '
ORR             R1, R1, R6,LSL#5
VDIV.F32        S10, S9, S6
VMOV            S6, R4
VCVT.F32.S32    S6, S6
VDIV.F32        S9, S8, S6
VMOV            S6, R5
VCVT.F32.S32    S8, S6
VDIV.F32        S6, S7, S8
VLDM            R0, {S7-S8}
MOV             R0, #1
VSTR            S11, [R12,#0x1C]
VSTM            R2, {S3-S5}
ADD             R2, R12, #0x14
VSTM            R2, {S7-S8}
ADD             R2, R12, #0x30 ; '0'
STRH            R3, [R12,#2]
STRH            R4, [R12,#4]
STRH            R5, [R12,#6]
STRB            R1, [R12]
VSTR            S10, [R12,#8]
VSTR            S9, [R12,#0xC]
VSTR            S6, [R12,#0x10]
VSTR            S2, [R12,#0x2C]
VSTM            R2, {S0-S1}
VABS.F32        S0, S2
VSTR            S0, [R12,#0x2C]
VLDR            S0, [R12,#0x30]
VABS.F32        S0, S0
VSTR            S0, [R12,#0x30]
VABS.F32        S0, S1
VSTR            S0, [R12,#0x34]
POP             {R4-R6}
BX              LR
