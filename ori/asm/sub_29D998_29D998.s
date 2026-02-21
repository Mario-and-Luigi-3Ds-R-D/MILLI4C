PUSH            {R4,LR}
MOV             R4, R0
SUB             SP, SP, #0x30
LDR             R1, [R4,#0xAC]
MOV             R0, SP
BL              sub_1169CC
VLDR            S0, [R4,#0xCC]
VLDR            S1, [R4,#0xF8]
MOV             R1, SP
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_2C]
VLDR            S0, [R4,#0xD0]
VLDR            S1, [R4,#0xFC]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_1C]
LDR             R0, [R4,#0xD4]
STR             R0, [SP,#0x38+var_C]
LDR             R0, [R4,#0xA4]
BL              sub_593188
MOV             R0, R4
BL              sub_29DBF0
ADD             SP, SP, #0x30 ; '0'
POP             {R4,PC}
