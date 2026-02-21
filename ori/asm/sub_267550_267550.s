PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0]
VLDR            S0, [R1,#8]
VLDM            R1, {S1-S2}
MOV             R1, SP
VLDR            S16, [R0,#0x54]
ADD             R0, R0, #0x48 ; 'H'
VLDM            R0, {S3-S5}
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x20+var_18]
VMOV.F32        S0, S16
VSTMEA          SP, {S1-S2}
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x2C]
STR             R0, [SP,#0x20+var_18]
LDR             R0, [R4]
LDR             R0, [R0,#0x4C]
STR             R0, [SP,#0x20+var_1C]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x11C
BL              sub_5A2138
LDR             R1, [R4]
LDR             R0, [R4,#8]
VMOV.F32        S0, S16
ADD             R1, R1, #0x3C ; '<'
ADD             R0, R0, #0x1C4
BL              sub_5A2138
MOV             R0, #5
STRB            R0, [R4,#4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
