PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R0, #7
VPUSH           {D8}
SUB             SP, SP, #0xC
STRB            R0, [R4,#0xC]
LDR             R0, =off_6CE098
VLDR            S16, =0.0
VLDR            S0, =1.0
MOV             R2, SP
LDR             R0, [R0]
MOV             R1, #1
LDR             R5, [R0,#0x8C]
ADD             R0, R4, #0x1F0
VLDR            S17, [R5,#0x30C]
VSTR            S16, [SP,#0x20+var_20]
VSTR            S0, [SP,#0x20+var_1C]
VSTR            S16, [SP,#0x20+var_18]
VLDR            S0, [R4,#0x3C]
VMOV.F32        S1, S17
VLDR            S2, [R5,#0x310]
VNEG.F32        S0, S0
BL              sub_5A28C4
VMOV.F32        S0, S17
ADD             R2, R5, #0x314
MOV             R1, #0
ADD             R0, R4, #0x1F0
BL              sub_5A2B20
MOV             R2, #0xFFFFFFFF
MOV             R1, #0x11
ADD             R0, R4, #0x14
BL              sub_5C55C8
VMOV            S0, R0
VSTR            S16, [R4,#0x3B0]
MOV             R0, #0
MOV             R2, R0
MOV             R3, #0x100
MOV             R1, #0xB
VCVT.F32.S32    S0, S0
VSUB.F32        S0, S17, S0
VSTR            S0, [R4,#0x3B4]
STR             R0, [R4,#0x10]
ADD             R0, R4, #0x14
BL              sub_14C548
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
