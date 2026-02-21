PUSH            {LR}
SUB             SP, SP, #0xC
VCVT.F64.F32    D0, S0
STR             R2, [SP,#0x10+var_8]
MOV             R2, R1
MOV             R1, #5
VSTR            D0, [SP,#0x10+var_10]
LDR             R0, [R0,#0xC]
BL              sub_11CDA0
ADD             SP, SP, #0xC
POP             {PC}
