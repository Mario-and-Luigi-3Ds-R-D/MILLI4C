PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
ADD             R6, R0, #0x13C00
ADD             R6, R6, #0x9C
ADD             R0, R0, #0x13C00
LDR             R12, [R6]
ADD             R0, R0, #0xA4
ADD             R5, R12, R1,LSL#6
ADD             R12, R4, #0x100
STR             R5, [R4,#0x144]
STRH            R1, [R12,#0x48]
LDR             R1, [R6]
ADD             R1, R1, R3,LSL#6
STR             R1, [R4,#0x14C]
STRH            R3, [R12,#0x50]
LDR             R0, [R0]
ADD             R0, R0, R2,LSL#1
MOV             R2, #0
LDRH            R0, [R0]
MOV             R1, R2
STRH            R0, [R12,#0x52]
ADD             R0, R5, #0x14
BL              sub_5D0190
LDRSB           R1, [R0]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x15C]
LDRSB           R1, [R0,#1]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x160]
LDRB            R1, [R0,#2]
VMOV            S0, R1
VCVT.F32.U32    S0, S0
VSTR            S0, [R4,#0x164]
LDRB            R1, [R0,#4]
VMOV            S0, R1
VCVT.F32.U32    S0, S0
VSTR            S0, [R4,#0x168]
LDRB            R0, [R0,#3]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VSTR            S0, [R4,#0x16C]
POP             {R4-R6,PC}
