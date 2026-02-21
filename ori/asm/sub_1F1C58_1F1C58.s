PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0x14
ADD             R7, SP, #0x40+arg_4
VMOV.F64        D8, D0
LDM             R7, {R6,R9}
LDR             R8, [SP,#0x40+arg_0]
BL              sub_1EB36C
MOV             R7, R0
LDRH            R0, [R5]
AND             R0, R0, #3
CMP             R0, #1
BEQ             loc_1F1CAC
VMOV.F32        S1, S17
VMOV.F32        S0, S16
LDR             R0, =0x10014
MOV             R2, #0
MOV             R1, R9
B               loc_1F1D58
ADD             R1, R6, #0x13800
MOV             R2, R8
ADD             R1, R1, #0x3A4
MOV             R0, SP
BL              sub_1423B4
VLDR            S0, [SP,#0x40+var_3C]
VLDR            S1, [SP,#0x40+var_34]
VLDR            S3, =0.5
ADD             R6, R6, #0x14000
VDIV.F32        S2, S0, S1
LDR             R0, [R6,#0x180]
VMUL.F32        S18, S2, S3
BL              sub_485B0C
VMOV            S0, R0
VLDR            S1, [R4,#0x124]
MOV             R0, #0x140
LDRH            R3, [R5]
LDRH            R2, [R0,R4]
ADD             R8, SP, #0x40+var_34
VCVT.F32.U32    S0, S0
LDR             R0, [R5,#8]
MOV             R3, R3,LSR#2
VMUL.F32        S0, S18, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
ADDLS           R1, R4, #0x134
ADDHI           R1, R4, #0x128
STM             R8, {R1,R2}
ADD             R2, SP, #0x40+var_3C
STM             R2, {R3,R7}
LDRH            R1, [R0,#6]
STR             R1, [SP,#0x40+var_40]
LDR             R12, [R4,#0x144]
LDRH            R3, [R0,#2]
LDRH            R2, [R0]
LDR             R1, [R6,#0x180]
MOV             R0, R12
BL              sub_3A190C
VMOV.F32        S1, S17
VMOV.F32        S0, S16
LDR             R0, =0x20002
MOV             R2, #0
MOV             R1, R9
BL              sub_1459F8
ADD             SP, SP, #0x14
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R9,PC}
