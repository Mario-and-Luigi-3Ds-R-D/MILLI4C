PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CDF98
LDR             R1, [R4,#0xC]
SUB             SP, SP, #0x10
VLDR            S2, =1.0
LDR             R0, [R0]
VLDR            S1, [R1,#0x28]
MOV             R2, SP
LDR             R0, [R0,#0x124]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x194]
VSUB.F32        S0, S0, S1
VLDR            S1, =0.0
VSTMEA          SP, {S1-S2}
VSTR            S1, [SP,#0x18+var_10]
LDR             R1, [R4,#0xC]
VADD.F32        S1, S0, S2
VLDR            S2, [R0,#0x190]
ADD             R0, R1, #0x1DC
MOV             R1, #1
BL              sub_5A299C
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xC
BL              sub_14C548
LDR             R0, [R4,#0xC]
LDRB            R1, [R4,#0x1C]
MOV             R2, #3
STRB            R1, [R0,#0xF6]
STRB            R2, [R4,#4]
ADD             SP, SP, #0x10
POP             {R4,PC}
