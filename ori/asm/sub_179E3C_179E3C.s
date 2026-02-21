ADD             R3, R3, #8
PUSH            {LR}
SUB             SP, SP, #0x24
VLDM            R3, {S0-S1}
ADD             R0, SP, #0x28+var_18
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSTM            R0, {S0-S1}
VLDR            S1, [R3,#8]
VLDR            S0, [R3,#0xC]
LDR             R0, =off_6D1648
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSTR            S1, [SP,#0x28+var_10]
VSTR            S0, [SP,#0x28+var_C]
LDR             R1, [R3,#0x10]
VLDR            S1, =0.5
LDR             R0, [R0]
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
LDR             R1, [R3,#0x14]
ADD             R3, SP, #0x28+var_24
ADD             R2, R0, #0xEC
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
CMP             R1, #0
MOVNE           R1, #1
VCVT.S32.F32    S0, S0
VSTR            S0, [SP,#0x28+var_28]
STM             R3, {R1,R2}
ADD             R3, SP, #0x28+var_10
LDR             R1, [R0]
ADD             R2, SP, #0x28+var_18
LDR             R12, [R1,#0x98]
MOV             R1, #0
BLX             R12
ADD             SP, SP, #0x24 ; '$'
MOV             R0, #0
POP             {PC}
