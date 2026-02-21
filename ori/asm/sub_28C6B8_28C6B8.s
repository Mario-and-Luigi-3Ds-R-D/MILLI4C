PUSH            {R4-R8}
MOV             R12, R0
MOV             R4, R1
LDR             R6, [SP,#0x14+arg_0]
VLDR            S4, =0.0
VLDR            S2, =3.4028e38
VLDR            S5, =1.0
ADD             R5, R2, #0xC
VSTR            S4, [R3]
MOV             R7, #3
VLDR            S1, [R4]
VLDR            S0, [R12]
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S3, S1
VMOVCS.F32      S3, S1
VMOV            R8, S3
CMP             R8, #0x34000000
BGE             loc_28C728
VLDR            S1, [R2]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_28C788
VLDR            S1, [R5]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_28C788
B               loc_28C794
VLDR            S7, [R2]
VLDR            S6, [R5]
VDIV.F32        S3, S5, S1
VSUB.F32        S1, S7, S0
VSUB.F32        S6, S6, S0
VMUL.F32        S0, S1, S3
VMUL.F32        S1, S6, S3
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_28C75C
VMOV.F32        S3, S0
VMOV.F32        S0, S1
VMOV.F32        S1, S3
VLDR            S3, [R3]
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S2, S1
VMOVCS.F32      S0, S3
VMRS            APSR_nzcv, FPSCR
VSTR            S0, [R3]
VMOVGT.F32      S2, S1
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_28C794
POP             {R4-R8}
MOV             R0, #0
BX              LR
SUBS            R7, R7, #1
ADD             R12, R12, #4
ADD             R4, R4, #4
ADD             R2, R2, #4
ADD             R5, R5, #4
BNE             loc_28C6E0
VLDR            S0, [R3]
VLDR            S2, [R1]
VLDR            S1, [R1,#4]
VLDR            S3, [R1,#8]
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
VLDM            R0, {S3-S5}
MOV             R0, #1
VADD.F32        S2, S3, S2
VADD.F32        S1, S4, S1
VADD.F32        S0, S5, S0
VSTR            S2, [R6]
VSTR            S1, [R6,#4]
VSTR            S0, [R6,#8]
POP             {R4-R8}
BX              LR
