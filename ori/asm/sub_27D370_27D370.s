PUSH            {R4,LR}
SUB             SP, SP, #0x10
VLDR            S0, =0.0
MOV             R4, R1
VSTR            S0, [SP,#0x18+var_14]
VSTR            S0, [SP,#0x18+var_10]
VSTR            S0, [SP,#0x18+var_C]
MOV             R1, #0
STR             R1, [SP,#0x18+var_18]
MOV             R2, SP
ADD             R1, SP, #0x18+var_14
BL              sub_27C498
ADD             R3, SP, #0x18+var_14
LDM             R3, {R0-R2}
STM             R4, {R0-R2}
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_27D3EC
VMOV            S0, R0
VLDR            S2, =1.0
VCVT.F32.U32    S1, S0
VDIV.F32        S0, S2, S1
VLDR            S1, [R4]
VMUL.F32        S1, S1, S0
VSTR            S1, [R4]
VMOV            S1, R1
VMUL.F32        S1, S1, S0
VSTR            S1, [R4,#4]
VMOV            S1, R2
VMUL.F32        S0, S1, S0
VSTR            S0, [R4,#8]
ADD             SP, SP, #0x10
POP             {R4,PC}
