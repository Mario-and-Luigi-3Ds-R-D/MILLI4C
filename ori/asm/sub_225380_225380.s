PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CDA80
MOV             R1, #3
VPUSH           {D8}
SUB             SP, SP, #0x18
MOV             R0, #0
STRB            R1, [R4,#0x3FC]
STR             R0, [R4,#0x400]
LDR             R0, [R6]
VLDR            S16, =0.0
ADD             R2, SP, #0x30+var_24
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
MOV             R1, #0
LDR             R5, [R0]
LDRB            R0, [R4,#4]
VLDR            S0, [R5,#0x68]
CMP             R0, #0
VLDR            S1, [R5,#0x6C]
VNEGEQ.F32      S0, S0
ADD             R0, R4, #0x1E4
VSTR            S0, [SP,#0x30+var_24]
VSTR            S16, [SP,#0x30+var_20]
VSTR            S1, [SP,#0x30+var_1C]
VLDR            S0, [R5,#0x70]
VMOV.F32        S17, S0
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
VSTR            S16, [SP,#0x30+var_28]
VLDR            S0, [R4,#0x30]
VMOV.F32        S1, S17
MOV             R2, SP
VNEG.F32        S0, S0
VLDR            S2, [R5,#0x64]
MOV             R1, #1
ADD             R0, R4, #0x1E4
BL              sub_5A28C4
LDRB            R0, [R4,#4]
CMP             R0, #0
LDRNE           R0, [R6]
BLNE            sub_228170
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x15
ADD             R0, R4, #8
BL              sub_14C548
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R6,PC}
