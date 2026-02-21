PUSH            {R4,LR}
MOV             R4, R0
ADD             R3, R4, #0x20 ; ' '
MOV             R2, #0
VLDM            R3, {S0-S1}
MOV             R1, R2
LDR             R0, =0x20040
BL              sub_1459F8
LDR             R0, [R4,#0x84]
ADD             R1, R4, #0x74 ; 't'
MOV             R2, #0x14
BIC             R0, R0, #2
STR             R0, [R4,#0x84]
ADD             R0, R4, #0x20 ; ' '
VLDR            S3, [R4,#0x18]
VLDR            S2, [R4,#0x1C]
VLDM            R0, {S0-S1}
MOV             R0, #0
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VLDR            S2, =0.025
VSTM            R1, {S0-S1}
VMUL.F32        S0, S0, S0
STRH            R0, [R4,#0x7C]
MOV             R1, #4
VMLA.F32        S0, S1, S1
VLDR            S1, =20.0
VSQRT.F32       S3, S0
VMUL.F32        S0, S3, S2
VMUL.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #0x14
STRH            R0, [R4,#0x7E]
MOVGE           R0, R2
BGE             loc_2A8AC0
CMP             R0, #4
MOVLE           R0, R1
MOV             R3, #1
STRH            R0, [R4,#0x7E]
LDR             R0, [R4,#4]
MOV             R2, R3
MOV             R1, #0
BL              sub_507CD8
MOV             R0, R4
NOP
BL              sub_2A9330
LDR             R0, [R4,#0x84]
BIC             R0, R0, #0x30 ; '0'
STR             R0, [R4,#0x84]
LDR             R0, [R4]
LDR             R1, [R0,#0x1C]
MOV             R0, R4
POP             {R4,LR}
BX              R1
