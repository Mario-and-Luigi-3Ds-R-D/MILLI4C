PUSH            {R4,LR}
SUB             SP, SP, #0x10
MOV             R2, R0
MOV             R3, R1
BL              sub_11D858
VCVT.F64.F32    D1, S1
VCVT.F64.F32    D0, S0
MOV             R4, R0
MOV             R1, #2
VSTMEA          SP, {D0-D1}
LDR             R0, [R2,#0xC]
MOV             R2, R4
BL              sub_11CDA0
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4,PC}
