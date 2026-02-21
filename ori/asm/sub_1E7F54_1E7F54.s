PUSH            {R4,R5,LR}
MOV             R5, R0
MOV             R4, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDRSH           R0, [R1]
LDRSH           R1, [R1,#6]
VLDR            S16, =0.0
VMOV            S1, R0
VMOV            S0, R1
MOV             R1, SP
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSTR            S1, [SP,#0x28+var_28]
VSTR            S0, [SP,#0x28+var_24]
VSTR            S16, [SP,#0x28+var_20]
LDR             R0, [R5]
LDR             R2, [R0,#0x6C]
MOV             R0, R5
BLX             R2
LDRSH           R0, [R4,#4]
LDRSH           R1, [R4,#6]
LDRSH           R2, [R4,#2]
LDRSH           R3, [R4]
SUB             R0, R0, R1
VMOV            S1, R0
SUB             R2, R2, R3
VMOV            S0, R2
LDR             R12, [R5]
VLDR            S17, =32.0
VLDR            S18, =16.0
VCVT.F32.S32    S3, S1
LDR             R1, [R12,#0x2D0]
VCVT.F32.S32    S2, S0
VMOV.F32        S4, S17
VMOV.F32        S1, S18
VMOV.F32        S0, S16
MOV             R0, R5
BLX             R1
LDRSH           R0, [R4,#4]
LDRSH           R1, [R4,#6]
LDRSH           R2, [R4,#2]
LDRSH           R3, [R4]
SUB             R0, R0, R1
VMOV            S1, R0
SUB             R2, R2, R3
VMOV            S0, R2
LDR             R12, [R5]
VMOV.F32        S4, S17
MOV             R0, R5
VCVT.F32.S32    S3, S1
LDR             R1, [R12,#0x284]
VCVT.F32.S32    S2, S0
VMOV.F32        S1, S18
VMOV.F32        S0, S16
BLX             R1
LDRSH           R0, [R4,#4]
LDRSH           R1, [R4,#6]
LDRSH           R2, [R4,#2]
LDRSH           R3, [R4]
SUB             R0, R0, R1
VMOV            S1, R0
SUB             R2, R2, R3
VMOV            S0, R2
LDR             R12, [R5]
VMOV.F32        S4, S17
MOV             R0, R5
VCVT.F32.S32    S3, S1
LDR             R1, [R12,#0x4C]
VCVT.F32.S32    S2, S0
VMOV.F32        S1, S18
VMOV.F32        S0, S16
BLX             R1
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4,R5,PC}
