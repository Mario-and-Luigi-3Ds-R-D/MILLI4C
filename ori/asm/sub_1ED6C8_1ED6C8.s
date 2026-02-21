VMOV            S1, R2
VMOV            S0, R3
PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R5, =0x401
VPUSH           {D8-D9}
VCVT.F32.S32    S18, S1
VCVT.F32.S32    S16, S0
MOV             R0, R5
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R5
VCVT.F32.U32    S17, S0
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
VSUB.F32        S1, S18, S17
VCVT.F32.U32    S0, S0
VSTR            S1, [R4]
VSUB.F32        S0, S0, S16
VSTR            S0, [R4,#4]
VPOP            {D8-D9}
POP             {R4-R6,PC}
