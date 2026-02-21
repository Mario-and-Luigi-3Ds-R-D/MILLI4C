PUSH            {R4,LR}
SUB             SP, SP, #0x20
MOV             R4, R0
LDR             R0, [R0,#0x404]
VLDR            S0, =0.5
ADD             R1, SP, #0x28+var_14
BL              sub_5CC1B0
ADD             R1, SP, #0x28+var_14
MOV             R0, R4
BL              sub_14E984
ADD             R3, SP, #0x28+var_14
VLDR            S0, =0.0
LDM             R3, {R0-R2}
ADD             R3, SP, #0x28+var_20
STM             R3, {R0-R2}
ADD             R1, SP, #0x28+var_20
VSTR            S0, [SP,#0x28+var_1C]
MOV             R2, #1
MOV             R0, R1
BL              sub_14C878
VLDR            S0, [SP,#0x28+var_1C]
VLDR            S1, [SP,#0x28+var_10]
MOV             R1, #0
MOV             R0, R4
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_1C]
BL              sub_14C450
ADD             R1, SP, #0x28+var_20
MOV             R0, R4
BL              sub_14E984
ADD             SP, SP, #0x20 ; ' '
POP             {R4,PC}
