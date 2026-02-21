PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R3, R4, #0xC8
MOV             R2, #0
VLDM            R3, {S0-S1}
MOV             R1, R2
LDR             R0, =0x2003C
BL              sub_1459F8
LDR             R0, [R4,#0xFC]
MOV             R5, #0
MOV             R3, #1
BIC             R0, R0, #1
STR             R0, [R4,#0xFC]
STRB            R5, [R4,#0xF8]
LDR             R0, [R4,#4]
MOV             R2, R3
MOV             R1, R5
BL              sub_507CD8
VLDR            S1, [R4,#0xC8]
VLDR            S3, [R4,#0xC0]
VLDR            S0, [R4,#0xCC]
VLDR            S2, [R4,#0xC4]
VSUB.F32        S1, S1, S3
LDR             R1, =0x451C4000
VSUB.F32        S0, S0, S2
MOV             R2, #0x30 ; '0'
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VMOV            R0, S1
CMP             R0, R1
LDR             R0, [R4,#0xFC]
MOV             R1, #8
BIC             R0, R0, #0xC
ORRGT           R0, R0, #8
ORRLE           R0, R0, #4
STR             R0, [R4,#0xFC]
VLDR            S1, [R4,#0xC8]
VLDR            S3, [R4,#0xB0]
VLDR            S0, [R4,#0xCC]
VLDR            S2, [R4,#0xB4]
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S0, S2
VLDR            S2, =0.005
VSTR            S1, [R4,#0xE0]
VMUL.F32        S1, S1, S1
VSTR            S0, [R4,#0xE4]
VLDR            S0, [R4,#0xE4]
STRH            R5, [R4,#0xF4]
VMLA.F32        S1, S0, S0
VLDR            S0, =40.0
VSQRT.F32       S3, S1
VMUL.F32        S1, S3, S2
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #0x30 ; '0'
STRH            R0, [R4,#0xF6]
MOVGE           R0, R2
BGE             loc_15A0B4
CMP             R0, #8
MOVLE           R0, R1
STRH            R0, [R4,#0xF6]
MOV             R0, R4
BL              sub_158F78
LDR             R0, [R4]
LDR             R1, [R0,#0x1C]
MOV             R0, R4
BLX             R1
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_2CF4BC
