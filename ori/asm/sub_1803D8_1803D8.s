PUSH            {LR}
LDR             R0, [R0,#4]
ADD             R1, R3, #0x6C ; 'l'
SUB             SP, SP, #0xC
ADD             R0, R0, #0x15000
VLDM            R1, {S0-S2}
ADD             R2, R3, #8
LDR             R0, [R0,#0x18]
VSTMEA          SP, {S0-S2}
LDR             R1, [R3,#8]
CMP             R1, #0
BEQ             loc_18042C
VLDR            S3, [R0,#0xAC]
VADD.F32        S0, S0, S3
VSTR            S0, [SP,#0x10+var_10]
VLDR            S0, [R0,#0xB0]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x10+var_C]
VLDR            S0, [R0,#0xB4]
VADD.F32        S0, S2, S0
VSTR            S0, [SP,#0x10+var_8]
LDR             R1, [R2,#0x10]
VLDR            S1, =0.5
ADD             R0, R0, #0xA8
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
MOV             R1, SP
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
BL              sub_5A1FC8
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {PC}
