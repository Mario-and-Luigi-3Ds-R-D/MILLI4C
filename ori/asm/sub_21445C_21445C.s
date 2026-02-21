PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, #0x400
ADD             R4, R0, #0x70 ; 'p'
MOV             R7, R1
MOV             R0, R6
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R6
VCVT.F32.U32    S0, S0
VSTR            S0, [R4]
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R6
VCVT.F32.U32    S0, S0
VSTR            S0, [R4,#4]
BL              sub_485BDC
VSTR            S0, [R4,#8]
MOV             R1, R7
MOV             R0, R5
BL              sub_214100
MOV             R0, R5
POP             {R4-R8,PC}
