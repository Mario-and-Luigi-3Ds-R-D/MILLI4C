PUSH            {LR}
LDR             R0, [R0,#4]
ADD             R12, R3, #0x6C ; 'l'
SUB             SP, SP, #0xC
ADD             R0, R0, #0x15000
VLDM            R12, {S0-S2}
ADD             R2, R3, #0x68 ; 'h'
LDR             R0, [R0,#0x18]
VSTMEA          SP, {S0-S2}
LDR             R1, [R3,#8]
CMP             R1, #0
BEQ             loc_1804C4
VLDR            S3, [R0,#0xAC]
VADD.F32        S0, S0, S3
VSTR            S0, [SP,#0x10+var_10]
VLDR            S0, [R0,#0xB0]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x10+var_C]
VLDR            S0, [R0,#0xB4]
VADD.F32        S0, S2, S0
VSTR            S0, [SP,#0x10+var_8]
VLDR            S0, [R2,#0x10]
VLDR            S1, =2.0
MOV             R1, SP
ADD             R0, R0, #0xA8
VMUL.F32        S0, S0, S1
BL              sub_5A29E4
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {PC}
