PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S1, =0.0039216
MOV             R5, R1
VPUSH           {D8}
LDRB            R0, [R1,#3]
VMOV            S0, R0
ADD             R0, R4, #0x210
VCVT.F32.U32    S0, S0
VMUL.F32        S16, S0, S1
BL              sub_5A18EC
VSTR            S16, [R4,#0x21C]
VSTR            S16, [R4,#0x214]
LDRB            R0, [R5,#3]
SUB             R0, R0, #0x100
REV             R0, R0
STR             R0, [R4,#0x9C]
VPOP            {D8}
POP             {R4-R6,PC}
