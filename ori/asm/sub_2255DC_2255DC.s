PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R0, #6
VPUSH           {D8}
SUB             SP, SP, #0x18
STRB            R0, [R5,#0x3FC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x15
ADD             R0, R5, #8
BL              sub_14C548
LDR             R6, =off_6CDA80
LDRB            R1, [R5,#4]
VLDR            S16, =0.0
LDR             R0, [R6]
CMP             R1, #0
MOV             R1, SP
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R4, [R0]
VLDR            S0, [R4,#0x340]
LDR             R0, [R4,#0x344]
VNEGEQ.F32      S0, S0
VSTR            S0, [SP,#0x30+var_30]
VSTR            S16, [SP,#0x30+var_2C]
STR             R0, [SP,#0x30+var_28]
VLDR            S0, =60.0
ADD             R0, R5, #0x1E4
BL              sub_5A367C
VLDR            S0, =1.0
VSTR            S16, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
VSTR            S16, [SP,#0x30+var_28]
VLDR            S0, [R5,#0x30]
ADD             R2, R4, #0x348
MOV             R1, SP
VNEG.F32        S0, S0
VLDM            R2, {S1-S2}
ADD             R0, R5, #0x1E4
BL              sub_5A33D0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VLDR            S0, [R4,#0x350]
TST             R0, #1
VSTR            S16, [SP,#0x30+var_24]
VNEGEQ.F32      S0, S0
VSTR            S16, [SP,#0x30+var_20]
ADD             R1, SP, #0x30+var_24
ADD             R0, R5, #0x108
VSTR            S0, [SP,#0x30+var_1C]
VLDR            S0, [R4,#0x354]
BL              sub_5A1FC8
LDRB            R0, [R5,#4]
CMP             R0, #0
LDRNE           R0, [R6]
BLNE            sub_228170
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R6,PC}
