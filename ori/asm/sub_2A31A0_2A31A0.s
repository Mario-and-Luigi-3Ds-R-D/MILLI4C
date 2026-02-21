PUSH            {R3-R5,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xFD]
ADD             R5, R4, #0x300
CMP             R0, #0
BEQ             loc_2A3238
VLDR            S2, [R4,#0x320]
VLDR            S5, [R4,#0x32C]
VLDR            S1, [R4,#0x324]
VLDR            S4, [R4,#0x330]
VSUB.F32        S2, S2, S5
VLDR            S0, [R4,#0x328]
VSUB.F32        S1, S1, S4
VLDR            S3, [R4,#0x334]
LDRH            R0, [R5,#0x38]
ADD             R2, R4, #0x320
VSUB.F32        S0, S0, S3
MOV             R1, #0
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VMOV            S0, R0
ADD             R0, R4, #0x100
VSQRT.F32       S1, S2
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
BL              sub_5A2A74
MOV             R0, #0xFFFFFFFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4]
LDR             R2, [R0,#0x3C]
MOV             R0, R4
BLX             R2
MOV             R0, #1
STRB            R0, [R4,#0xFD]
POP             {R3-R5,PC}
LDR             R0, [R4]
ADD             R1, R4, #0x32C
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDRH            R0, [R5,#0x38]
ADD             R2, R4, #0x320
MOV             R1, #0
VMOV            S0, R0
ADD             R0, R4, #0x100
VCVT.F32.U32    S0, S0
BL              sub_5A2074
NOP
NOP
B               loc_2A320C
