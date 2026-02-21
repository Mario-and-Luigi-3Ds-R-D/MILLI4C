PUSH            {R4-R6,LR}
MOV             R5, R0
VLDR            S1, =0.0039216
ADD             R4, R5, #0x218
VPUSH           {D8}
MOV             R6, R1
LDRB            R0, [R1,#3]
VMOV            S0, R0
MOV             R0, R4
VCVT.F32.U32    S0, S0
VMUL.F32        S16, S0, S1
BL              sub_5A18EC
VSTR            S16, [R4,#0xC]
VSTR            S16, [R4,#4]
LDR             R0, [R6]
STR             R0, [R5,#0x9C]
VPOP            {D8}
POP             {R4-R6,PC}
