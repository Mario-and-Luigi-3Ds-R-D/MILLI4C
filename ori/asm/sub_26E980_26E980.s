PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, [R0,#4]
ADD             R5, R0, #8
SUB             SP, SP, #0x10
MOV             R0, R5
BL              sub_5A26D0
ADD             R6, R6, #0x400
ADD             R6, R6, #0x198
ADD             R3, R5, #0x1C
LDM             R6, {R0-R2}
ADD             R5, R5, #4
VLDR            S2, =0.0
VLDR            S0, =1.0
STM             R3, {R0-R2}
STM             R5, {R0-R2}
MOV             R2, SP
VSTR            S2, [SP,#0x20+var_20]
VSTR            S0, [SP,#0x20+var_1C]
VSTR            S2, [SP,#0x20+var_18]
VLDR            S0, [R4,#0x10]
VLDR            S1, [R4,#0xB4]
MOV             R1, #1
VNEG.F32        S0, S0
ADD             R0, R4, #8
BL              sub_5A28C4
MOV             R0, #0
STRB            R0, [R4,#0xB0]
LDR             R0, [R4,#4]
BL              sub_270708
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
