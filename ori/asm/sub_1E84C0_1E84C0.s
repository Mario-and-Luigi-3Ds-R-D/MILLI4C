PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
LDRB            R1, [R4,#0x17D]
SUB             SP, SP, #0x18
BIC             R1, R1, #2
TST             R1, #4
STRB            R1, [R4,#0x17D]
BEQ             loc_1E855C
LDR             R1, [R4,#0xA4]
VLDR            S3, [R4,#0x184]
VLDR            S8, [R4,#0x188]
ADD             R1, R1, #0x8C
VLDR            S4, [R4,#0x18C]
VLDR            S2, [R1,#0xC]
VLDR            S0, [R1,#0x1C]
VLDR            S1, [R1,#0x2C]
ADD             R1, R4, #0x194
VLDR            S7, [R4,#0x190]
VADD.F32        S3, S2, S3
VLDM            R1, {S5-S6}
VADD.F32        S2, S2, S8
VADD.F32        S4, S0, S4
VADD.F32        S0, S0, S7
VADD.F32        S5, S1, S5
VADD.F32        S1, S1, S6
MOV             R1, SP
VSTR            S3, [SP,#0x20+var_20]
VSTR            S2, [SP,#0x20+var_1C]
VSTR            S4, [SP,#0x20+var_18]
VSTR            S0, [SP,#0x20+var_14]
VSTR            S5, [SP,#0x20+var_10]
VSTR            S1, [SP,#0x20+var_C]
BL              sub_5C9C14
CMP             R0, #0
BNE             loc_1E855C
LDRB            R0, [R4,#0x17D]
ORR             R0, R0, #2
STRB            R0, [R4,#0x17D]
ADD             SP, SP, #0x18
POP             {R4,PC}
