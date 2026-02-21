PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R7, R0
LDR             R0, =off_6CDCE8
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R4, [R0]
LDR             R0, [R4,#0x4C]
BL              sub_5CDB04
CMP             R0, #0
BEQ             loc_292B74
ADD             R4, R4, #0x12800
ADD             R4, R4, #4
LDR             R0, [R4]
BL              sub_5CDA90
CMP             R0, #0
BEQ             loc_292C30
ADD             R6, R7, #0x12C00
ADD             R6, R6, #0x18
LDR             R0, [R6]
CMP             R0, #0xC8
BCC             loc_292C30
LDR             R0, [R7,#0x40]
CMP             R0, #0
BEQ             loc_292C30
BL              sub_5CD894
CMP             R0, #0
NOP
BEQ             loc_292C30
ADD             R8, R7, #0x12800
ADD             R8, R8, #4
MOV             R1, R5
LDR             R0, [R8]
BL              sub_284CBC
LDR             R0, [R6]
LDR             R1, =0x51EB851F
SUB             R0, R0, #0xC8
STR             R0, [R6]
UMULL           R2, R1, R1, R0
MOVS            R5, R1,LSR#6
VLDRNE          S17, =0.0
BEQ             loc_292C30
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
BNE             loc_292BD8
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
