LDR             R12, =off_6CE970
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R1, [R0,#0xC]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
LDR             R2, =0x30204
SUB             SP, SP, #0x18
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
LDR             R5, [R4,#0x4E0]
MOV             R6, #0
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_28F784
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#8]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
STRNE           R6, [R5,#8]
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
BL              sub_14C548
LDR             R5, [R4,#0x4D8]
VLDR            S0, =0.0
VLDR            S1, =1.0
MOV             R2, SP
LDR             R0, [R5,#0x14]!
VSTR            S0, [SP,#0x28+var_1C]
VSTR            S0, [SP,#0x28+var_18]
STR             R0, [SP,#0x28+var_14]
MOV             R1, #1
VSTMEA          SP, {S0-S1}
VSTR            S0, [SP,#0x28+var_20]
LDR             R0, [R4,#0xC]
VLDR            S2, [R5,#4]
VLDR            S1, [R5,#8]
ADD             R0, R0, #0x1DC
BL              sub_5A28C4
LDR             R0, [R4,#0xC]
VLDR            S0, [R5,#8]
ADD             R2, SP, #0x28+var_1C
ADD             R0, R0, #0x1DC
MOV             R1, #0
BL              sub_5A2B20
MOV             R0, #2
STRB            R0, [R4,#0xA0]
STRB            R6, [R4,#0x2D]
STRB            R6, [R4,#0xD4]
ADD             SP, SP, #0x18
POP             {R4-R6,PC}
