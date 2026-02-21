PUSH            {R4-R6,LR}
BL              sub_3D5AD0
MOV             R4, R0
ADD             R0, R0, #0x400
VLDR            S1, =10.0
ADD             R0, R0, #0x2BC
ADD             R3, R0, #4
MOV             R1, #5
MOV             R2, #0xC
VSTR            S1, [R0]
VLDR            S0, =36.0
STM             R3, {R1,R2}
MOV             R1, #0
VSTR            S0, [R0,#0x18]
VSTR            S0, [R0,#0x1C]
VLDR            S2, =70.0
VLDR            S3, =45.0
VLDR            S4, =142.0
ADD             R0, R0, #0xC
LDR             R5, =off_6CE970
VSTM            R0, {S2-S4}
LDR             R0, [R4,#0x34]
STR             R0, [R4,#0x68]
STR             R0, [R4,#0x74]
STR             R0, [R4,#0x80]
STR             R0, [R4,#0x8C]
LDR             R0, [R5]
BL              sub_5EEDA0
VCVT.U32.F32    S0, S0
MOV             R1, #1
VSTR            S0, [R4,#0x28]
LDR             R0, [R5]
BL              sub_5EEDA0
VCVT.U32.F32    S0, S0
VSTR            S0, [R4,#0x2C]
LDR             R0, [R4,#0x50]
CMP             R0, #0
BEQ             loc_1A2090
LDR             R0, [R5]
MOV             R1, #2
BL              sub_5EEDA0
VCVT.U32.F32    S0, S0
MOV             R1, #3
VSTR            S0, [R4,#0x48]
LDR             R0, [R5]
BL              sub_5EEDA0
VCVT.U32.F32    S0, S0
VSTR            S0, [R4,#0x4C]
MOV             R0, R4
POP             {R4-R6,PC}
