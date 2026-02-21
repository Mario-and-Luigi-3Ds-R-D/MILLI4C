PUSH            {R4-R7,LR}
ADD             R1, R0, #0x38 ; '8'
ADD             R4, R0, #0x48 ; 'H'
LDM             R1, {R1-R3,R12}
SUB             SP, SP, #0x34
ADD             LR, SP, #0x48+var_28
LDM             R4, {R4-R7}
STMEA           SP, {R1-R3,R12}
ADD             R1, SP, #0x48+var_38
VMOV            S2, R4
STM             R1, {R4-R7}
ADD             R1, R0, #0x58 ; 'X'
VMOV            S6, R5
LDM             R1, {R1-R3,R12}
VMOV            S3, R6
VMOV            S11, R7
VMOV            S4, R1
VMOV            S7, R2
STM             LR, {R1-R3,R12}
VMOV            S9, R3
VMOV            S12, R12
VLDR            S0, [R0,#0x68]
VLDR            S1, [SP,#0x48+var_48]
VLDR            S5, [SP,#0x48+var_44]
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S4, S4, S0
VLDR            S8, [SP,#0x48+var_40]
VMUL.F32        S5, S5, S0
VMUL.F32        S6, S6, S0
VMUL.F32        S7, S7, S0
VLDR            S10, [SP,#0x48+var_3C]
VMUL.F32        S8, S8, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S9, S9, S0
VMUL.F32        S10, S10, S0
VSTR            S1, [SP,#0x48+var_48]
VMUL.F32        S11, S11, S0
VSTR            S2, [SP,#0x48+var_38]
VMUL.F32        S0, S12, S0
VSTR            S4, [SP,#0x48+var_28]
VSTR            S5, [SP,#0x48+var_44]
VSTR            S6, [SP,#0x48+var_34]
VSTR            S7, [SP,#0x48+var_24]
VSTR            S8, [SP,#0x48+var_40]
VSTR            S3, [SP,#0x48+var_30]
VSTR            S9, [SP,#0x48+var_20]
VSTR            S10, [SP,#0x48+var_3C]
VSTR            S11, [SP,#0x48+var_2C]
VSTR            S0, [SP,#0x48+var_1C]
LDR             R0, [R0]
MOV             R2, SP
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_140DCC
ADD             SP, SP, #0x34 ; '4'
POP             {R4-R7,PC}
