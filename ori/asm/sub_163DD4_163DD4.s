PUSH            {LR}
SUB             SP, SP, #0x14
VLDR            S0, =0.0
CMP             R1, #0
VSTR            S0, [SP,#0x18+var_18]
VSTR            S0, [SP,#0x18+var_14]
ADD             R0, R0, #0x15000
VSTR            S0, [SP,#0x18+var_10]
ADD             R0, R0, #0x13C
MOV             R2, SP
VSTR            S0, [SP,#0x18+var_C]
MOVNE           R1, #2
MOVEQ           R1, #3
BL              sub_19DA04
ADD             SP, SP, #0x14
POP             {PC}
