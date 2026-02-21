PUSH            {R4,LR}
MOV             R4, R0
ADD             R3, R4, #0x20 ; ' '
MOV             R2, #0
VLDM            R3, {S0-S1}
MOV             R1, R2
LDR             R0, =0x20040
BL              sub_1459F8
LDR             R0, [R4,#0x4C]
MOV             R2, #0x14
MOV             R1, #4
BIC             R0, R0, #8
STR             R0, [R4,#0x4C]
VLDR            S1, [R4,#0x20]
VLDR            S3, [R4,#0x18]
VLDR            S0, [R4,#0x24]
VLDR            S2, [R4,#0x1C]
VSUB.F32        S1, S1, S3
MOV             R0, #0
VSUB.F32        S0, S0, S2
VLDR            S2, =0.025
VSTR            S1, [R4,#0x34]
VSTR            S0, [R4,#0x38]
VMUL.F32        S0, S1, S1
VLDR            S1, [R4,#0x38]
STRH            R0, [R4,#0x3C]
VMLA.F32        S0, S1, S1
VLDR            S1, =20.0
VSQRT.F32       S3, S0
VMUL.F32        S0, S3, S2
VMUL.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #0x14
STRH            R0, [R4,#0x3E]
MOVGE           R0, R2
BGE             loc_2A990C
CMP             R0, #4
MOVLE           R0, R1
MOV             R3, #1
STRH            R0, [R4,#0x3E]
LDR             R0, [R4,#4]
MOV             R2, R3
MOV             R1, #0
BL              sub_507CD8
LDR             R1, [R4,#4]
MOV             R0, #0x3C ; '<'
ADD             R1, R1, #0x700
STRH            R0, [R1,#0x22]
MOV             R0, R4
BL              sub_2AA034
LDR             R0, [R4]
LDR             R1, [R0,#0x1C]
MOV             R0, R4
POP             {R4,LR}
BX              R1
