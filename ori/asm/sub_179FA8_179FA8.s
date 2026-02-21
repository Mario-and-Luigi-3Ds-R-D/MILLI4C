ADD             R3, R3, #8
PUSH            {R4,LR}
VLDR            S0, [R3]
VLDR            S2, [R3,#4]
SUB             SP, SP, #0x10
VCVT.F32.S32    S1, S0
VCVT.F32.S32    S0, S2
LDR             R4, =off_6D1648
ADD             R2, SP, #0x18+var_10
MOV             R1, SP
VSTR            S1, [SP,#0x18+var_10]
VSTR            S0, [SP,#0x18+var_C]
LDR             R0, [R4]
BL              sub_1EEE78
VLDR            S0, [SP,#0x18+var_18]
LDR             R1, [R4]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R1,#0xE4]
VLDR            S0, [SP,#0x18+var_14]
VCVT.S32.F32    S0, S0
VMOV            R2, S0
STRH            R2, [R1,#0xE6]
STRH            R0, [R1,#0xE8]
VLDR            S0, [SP,#0x18+var_14]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R1,#0xEA]
ADD             SP, SP, #0x10
MOV             R0, #0
POP             {R4,PC}
