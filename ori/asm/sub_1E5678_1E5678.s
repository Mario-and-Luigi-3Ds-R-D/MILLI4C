PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0]
SUB             SP, SP, #0x24
MOV             R5, R1
ADD             R1, SP, #0x30+var_2C
LDR             R2, [R0,#0x30]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, SP, #0x30+var_18
LDR             R2, [R0,#0x38]
MOV             R0, R4
BLX             R2
ADD             R0, SP, #0x30+var_14
VLDR            S2, [SP,#0x30+var_18]
VLDR            S5, [SP,#0x30+var_2C]
VLDR            S3, [SP,#0x30+var_24]
VLDR            S4, [SP,#0x30+var_28]
VSUB.F32        S2, S2, S5
VLDM            R0, {S0-S1}
ADD             R2, SP, #0x30+var_18
MOV             R1, R5
VSUB.F32        S0, S0, S4
VSUB.F32        S1, S1, S3
VLDM            R5, {S3-S5}
VADD.F32        S2, S3, S2
VADD.F32        S0, S4, S0
VADD.F32        S1, S5, S1
VSTR            S2, [SP,#0x30+var_18]
VSTM            R0, {S0-S1}
LDR             R0, [R4]
LDR             R3, [R0,#0x20]
MOV             R0, R4
BLX             R3
ADD             SP, SP, #0x24 ; '$'
POP             {R4,R5,PC}
