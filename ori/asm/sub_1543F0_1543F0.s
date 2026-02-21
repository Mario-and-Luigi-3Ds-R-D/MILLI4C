PUSH            {R4}
ADD             R4, R0, #0x800
ADD             R4, R4, #0xB4
VLDR            S0, [R2]
ADD             R12, R0, #0x800
VLDM            R4!, {S3}
ADD             R12, R12, #0xC4
VLDM            R4, {S1-S2}
ADD             R0, R0, #0x800
VMUL.F32        S3, S3, S0
VLDR            S5, [R12]
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VLDR            S0, [R2,#4]
VLDR            S4, [R12,#4]
VLDR            S6, [R12,#8]
VMUL.F32        S5, S5, S0
VMUL.F32        S4, S4, S0
VMUL.F32        S0, S6, S0
ADD             R0, R0, #0xD4
VADD.F32        S3, S3, S5
VADD.F32        S1, S1, S4
VADD.F32        S2, S2, S0
VLDM            R0, {S4-S6}
MOV             R0, R1
VLDR            S0, [R2,#8]
VMUL.F32        S4, S4, S0
VMUL.F32        S5, S5, S0
VMUL.F32        S0, S6, S0
VADD.F32        S3, S3, S4
VADD.F32        S1, S1, S5
VADD.F32        S0, S2, S0
VSTR            S3, [R1]
VSTR            S1, [R1,#4]
VSTR            S0, [R1,#8]
POP             {R4}
BX              LR
