PUSH            {R4-R8,LR}
MOV             R7, R0
ADD             R6, R7, #0x12C00
ADD             R6, R6, #0x18
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, =0x51EB851F
LDR             R1, [R6]
UMULL           R1, R0, R0, R1
MOVS            R5, R0,LSR#6
VLDRNE          S17, =0.0
ADDNE           R8, R7, #0x12800
ADDNE           R8, R8, #4
BEQ             loc_292CDC
LDR             R0, [R7,#0x3C]
LDR             R2, =dword_6D1F40
ADD             R4, R0, #8
LDRD            R0, R1, [R4,#0x10]
BL              sub_47EADC
VMOV            S0, R0
LDR             R2, =dword_6D1F40
LDRD            R0, R1, [R4,#0x18]
VCVT.F32.S32    S16, S0
BL              sub_47EADC
VMOV            S0, R0
MOV             R1, SP
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x30+var_28]
VSTMEA          SP, {S16-S17}
LDR             R0, [R8]
BL              sub_284CBC
LDR             R0, [R6]
SUBS            R5, R5, #1
SUB             R0, R0, #0xC8
STR             R0, [R6]
BNE             loc_292C84
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
