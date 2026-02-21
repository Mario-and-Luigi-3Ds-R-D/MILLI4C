PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R5, R4, #8
LDR             R0, =off_6CDF98
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R0, [R0]
LDR             R6, [R4,#4]
LDR             R7, [R0,#0x124]
MOV             R0, R5
BL              sub_5A26D0
ADD             R6, R6, #0x400
ADD             R6, R6, #0x198
ADD             R3, R5, #0x1C
LDM             R6, {R0-R2}
ADD             R5, R5, #4
VLDR            S16, =0.0
VLDR            S0, =1.0
STM             R3, {R0-R2}
STM             R5, {R0-R2}
ADD             R5, R7, #0x400
VSTR            S16, [SP,#0x38+var_38]
VSTR            S0, [SP,#0x38+var_34]
VSTR            S16, [SP,#0x38+var_30]
VLDR            S0, [R4,#0x10]
MOV             R2, SP
VLDR            S2, [R5,#0x184]
VNEG.F32        S0, S0
VLDR            S1, [R5,#0x188]
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_5A28C4
LDR             R0, [R5,#0x18C]
ADD             R2, SP, #0x38+var_2C
MOV             R1, #0
STR             R0, [SP,#0x38+var_2C]
VSTR            S16, [SP,#0x38+var_28]
VSTR            S16, [SP,#0x38+var_24]
VLDR            S0, [R5,#0x188]
ADD             R0, R4, #8
BL              sub_5A2B20
LDR             R0, [R4,#4]
BL              sub_270784
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
