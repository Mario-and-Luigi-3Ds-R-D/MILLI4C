PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
VLDR            S1, [R1,#8]
ADD             R0, R0, #0x24 ; '$'
VLDM            R1, {S2-S3}
VLDR            S6, [R0]
VLDR            S5, [R0,#4]
VLDR            S4, [R0,#8]
VSUB.F32        S2, S2, S6
VSUB.F32        S3, S3, S5
VSUB.F32        S4, S1, S4
VLDR            S6, =0.0
VMUL.F32        S5, S2, S2
VMLA.F32        S5, S3, S3
VMLA.F32        S5, S4, S4
VSQRT.F32       S1, S5
VDIV.F32        S5, S1, S0
VCMP.F32        S5, S6
VMRS            APSR_nzcv, FPSCR
BNE             loc_2AC310
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x1C]
ADD             R0, R4, #0x14
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x28]
ADD             R4, R4, #0x20 ; ' '
STM             R4, {R1,R2}
POP             {R4,PC}
VDIV.F32        S7, S2, S1
VLDR            S0, =2.0
VMUL.F32        S10, S5, S5
VDIV.F32        S8, S2, S1
VMUL.F32        S2, S1, S0
VDIV.F32        S9, S6, S5
VDIV.F32        S6, S2, S10
VDIV.F32        S0, S2, S5
VDIV.F32        S2, S3, S1
VMUL.F32        S5, S2, S0
VDIV.F32        S3, S4, S1
VSUB.F32        S1, S9, S6
VMUL.F32        S4, S7, S0
VMUL.F32        S0, S3, S0
VMUL.F32        S6, S8, S1
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S3, S1
VSTR            S0, [R4,#0x1C]
VSTR            S6, [R4,#0x20]
VSTR            S2, [R4,#0x24]
VSTR            S1, [R4,#0x28]
ADD             R4, R4, #0x14
VSTM            R4, {S4-S5}
POP             {R4,PC}
