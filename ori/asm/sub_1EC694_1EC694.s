PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R5, R2
VPUSH           {D8-D9}
VMOV.F64        D8, D0
MOV             R0, R2
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R5
VCVT.F32.U32    S18, S0
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
VADD.F32        S1, S16, S18
VCVT.F32.U32    S0, S0
VSTR            S1, [R4]
VSUB.F32        S0, S0, S17
VSTR            S0, [R4,#4]
VPOP            {D8-D9}
POP             {R4-R6,PC}
