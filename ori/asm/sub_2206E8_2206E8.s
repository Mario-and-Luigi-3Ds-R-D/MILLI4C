PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
VLDR            S0, [R1]
VLDR            S1, [R0,#0x14]
VLDR            S2, [R1,#4]
VLDR            S3, [R0,#0x18]
VSUB.F32        S1, S0, S1
VSUB.F32        S0, S2, S3
VMOV.F32        S17, S1
VMOV.F32        S16, S0
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S4, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VMOV.F32        S1, S17
VLDR            S3, =6.2832
VLDR            S2, =0.31831
VCVT.F32.U32    S0, S0
VMUL.F32        S1, S1, S1
VMUL.F32        S0, S0, S4
VMUL.F32        S3, S0, S3
VMOV.F32        S0, S16
VMLA.F32        S1, S0, S0
VMUL.F32        S0, S3, S2
VSQRT.F32       S2, S1
VLDR            S1, =2.0
VSTR            S0, [R4,#0x2C]
VSTR            S0, [R4,#0x34]
VSTR            S0, [R4,#0x38]
VSTR            S2, [R4,#0x30]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
VLDR            S0, [R0]
VADD.F32        S0, S0, S1
BL              sub_5F63A4
VMOV.F32        S2, S0
VLDR            S16, =0.0
MOV             R0, #0
MOV             R1, #2
VSTR            S2, [R4,#0x24]
VSTR            S2, [R4,#0x28]
VSTR            S2, [R4,#0x20]
VSTR            S2, [R4,#0x1C]
VSTR            S2, [R4,#0x48]
STRH            R0, [R4,#0x3C]
VSTR            S16, [R4,#0x40]
VSTR            S16, [R4,#0x44]
LDR             R0, [R4,#4]
NOP
MOV             R3, #1
LDR             R0, [R4,#4]
MOV             R2, R3
MOV             R1, R3
BL              sub_507CD8
LDR             R0, [R4,#4]
BL              sub_505BE4
LDR             R0, [R4,#0x1C4]
VMOV.F32        S1, S16
VMOV.F32        S0, S16
BIC             R0, R0, #1
MOV             R2, #0
STR             R0, [R4,#0x1C4]
LDR             R0, =0x208DC
MOV             R1, R2
BL              sub_1459F8
LDR             R0, [R4,#4]
VPOP            {D8}
POP             {R4,LR}
B               sub_509330
