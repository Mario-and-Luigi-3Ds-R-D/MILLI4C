PUSH            {LR}
VLDR            S1, [R3,#8]
VLDR            S0, [R3,#0xC]
SUB             SP, SP, #0x1C
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
ADD             R1, R3, #0x68 ; 'h'
ADD             R2, R1, #0x10
ADD             R0, R3, #8
VLDR            S2, =2.0
VLDR            S3, =4.0
VSTR            S1, [SP,#0x20+var_18]
VSTR            S0, [SP,#0x20+var_14]
VLDR            S1, [R3,#0x10]
VLDR            S0, [R3,#0x14]
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSTR            S1, [SP,#0x20+var_10]
VSTR            S0, [SP,#0x20+var_C]
LDR             R1, [R0,#0x20]
LDR             R0, =off_6D1648
VLDR            S5, [R3,#0x80]
CMP             R1, #0
VLDM            R2, {S0-S1}
MOVNE           R1, #1
LDR             R0, [R0]
VLDR            S4, [R3,#0x84]
MOVEQ           R1, #0
ADD             R2, R0, #0xEC
STMEA           SP, {R1,R2}
LDR             R1, [R0]
VMUL.F32        S0, S0, S2
VMUL.F32        S1, S1, S3
VMUL.F32        S2, S5, S2
VMUL.F32        S3, S4, S3
LDR             R12, [R1,#0x94]
ADD             R3, SP, #0x20+var_10
ADD             R2, SP, #0x20+var_18
MOV             R1, #0
BLX             R12
ADD             SP, SP, #0x1C
MOV             R0, #0
POP             {PC}
