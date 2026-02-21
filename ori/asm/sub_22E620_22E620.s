PUSH            {R4,R5}
CMP             R1, #0
LDRD            R4, R5, [SP,#8+arg_0]
LDR             R12, [SP,#8+arg_8]
VLDM            R2, {S0-S2}
BEQ             loc_22E6C4
VMOV            S3, R3
VMOV            S5, R5
VMOV            S4, R4
ADD             R1, R12, #0xC
VCVT.F32.S32    S3, S3
VCVT.F32.S32    S6, S5
VCVT.F32.S32    S4, S4
VDIV.F32        S5, S0, S3
VSTR            S5, [R12,#8]
VDIV.F32        S3, S1, S4
VDIV.F32        S4, S2, S6
VSTM            R1, {S3-S4}
ADD             R1, R0, #0xE4
VLDM            R1, {S3-S5}
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VADD.F32        S2, S2, S5
LDRB            R1, [R12]
MOV             R2, #0
ADD             R0, R0, #0xE4
BIC             R1, R1, #8
ORR             R1, R1, #0x17
STRB            R1, [R12]
STR             R2, [R12,#0x2C]
ADD             R1, R12, #0x20 ; ' '
VLDM            R0, {S3-S5}
MOV             R0, #1
VSTM            R1, {S0-S2}
ADD             R1, R12, #0x14
VSTM            R1, {S3-S5}
STRH            R3, [R12,#2]
STRH            R4, [R12,#4]
STRH            R5, [R12,#6]
POP             {R4,R5}
BX              LR
VMOV            S4, R3
VLDR            S6, [R0,#0xE4]
VMOV            S3, R4
VMOV            S5, R5
VSUB.F32        S6, S0, S6
VCVT.F32.S32    S4, S4
VCVT.F32.S32    S3, S3
VCVT.F32.S32    S5, S5
VDIV.F32        S7, S6, S4
VSTR            S7, [R12,#8]
VLDR            S4, [R0,#0xE8]
VSUB.F32        S4, S1, S4
VDIV.F32        S6, S4, S3
VSTR            S6, [R12,#0xC]
VLDR            S3, [R0,#0xEC]
VSUB.F32        S3, S2, S3
VDIV.F32        S4, S3, S5
VSTR            S4, [R12,#0x10]
B               loc_22E67C
