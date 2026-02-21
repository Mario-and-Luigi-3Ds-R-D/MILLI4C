PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R3, #0x100
VPUSH           {D8-D9}
MOV             R2, #0
MOV             R1, #8
LDR             R0, [R0,#8]
BL              sub_14C548
LDR             R0, [R4,#4]
VLDR            S16, =0.0
VLDR            S0, =1.0
ADD             R1, R4, #0x64 ; 'd'
LDR             R5, [R0,#8]
VSTR            S16, [R4,#0x54]
VSTR            S16, [R4,#0x58]
VSTR            S0, [R4,#0x5C]
LDR             R0, [R5,#0x138]
STR             R0, [R4,#0x74]
VLDR            S0, [R5,#0x13C]
VSTR            S0, [R4,#0x70]
LDR             R0, [R5,#0x264]
STR             R0, [R4,#0x6C]
VLDR            S1, [R4,#0x5C]
LDR             R0, =dword_6D1F40
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S16, S0
VSTR            S0, [R4,#0x60]
VSTM            R1, {S0-S1}
ADD             R1, R5, #0x268
VLDM            R1, {S17-S18}
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, =0.000015259
VSUB.F32        S2, S18, S17
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x3017E
VCVT.F32.U32    S0, S0
MOV             R3, #0
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
VADD.F32        S0, S17, S0
VSTR            S0, [R4,#0x78]
LDR             R12, [R12]
LDR             R1, [R4,#8]
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R4,#8]
LDR             R1, [R5,#0x144]
ADD             R0, R0, #0x39C
VSTR            S16, [R0]
STR             R1, [R0,#4]
MOV             R0, #0x12
STRB            R0, [R4,#0xC]
VPOP            {D8-D9}
POP             {R4-R6,PC}
