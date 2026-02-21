PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
LDR             R0, [R6]
CMP             R0, #0
BEQ             locret_19DB00
LDR             R1, [R4,#0x1B4]
ADD             R5, R4, #0x100
TST             R1, #4
BNE             loc_19DA9C
LDRSH           R2, [R5,#0xD2]
CMP             R2, #0
BLT             locret_19DB00
BIC             R1, R1, #4
VLDR            S0, =570.0
STR             R1, [R4,#0x1B4]
MOV             R3, #1
VSTR            S0, [R4,#0x1CC]
MOV             R2, #0xFFFFFFFF
STRH            R3, [R5,#0xD0]
TST             R1, #0x400000
STRH            R2, [R5,#0xD2]
BEQ             locret_19DB00
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
BL              sub_5A18EC
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
LDRSH           R1, [R5,#0xD0]
VLDR            S0, [R4,#0x1CC]
POP             {R4-R6,LR}
VMOV            S1, R1
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VCVT.F32.S32    S1, S1
B               sub_5A12F8
POP             {R4-R6,PC}
