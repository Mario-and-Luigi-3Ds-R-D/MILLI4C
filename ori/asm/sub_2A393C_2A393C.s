PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x100
BL              sub_5F19B8
CMP             R0, #0
ADD             R0, R4, #0x300
BEQ             loc_2A39B0
VLDR            S1, [R4,#0x32C]
VLDR            S5, [R4,#0x320]
VLDR            S0, [R4,#0x330]
VLDR            S4, [R4,#0x324]
VSUB.F32        S1, S1, S5
VLDR            S2, [R4,#0x334]
VSUB.F32        S0, S0, S4
VLDR            S3, [R4,#0x328]
LDRH            R0, [R0,#0x3A]
ADD             R2, R4, #0x32C
VSUB.F32        S2, S2, S3
MOV             R1, #0
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VMOV            S0, R0
ADD             R0, R4, #0x100
VMLA.F32        S1, S2, S2
VSQRT.F32       S2, S1
VCVT.F32.U32    S1, S0
VDIV.F32        S0, S2, S1
BL              sub_5A2A74
B               loc_2A39CC
LDRH            R0, [R0,#0x3A]
ADD             R2, R4, #0x32C
MOV             R1, #0
VMOV            S0, R0
ADD             R0, R4, #0x100
VCVT.F32.U32    S0, S0
BL              sub_5A2074
MOV             R0, #3
STRB            R0, [R4,#0xFD]
POP             {R4,PC}
