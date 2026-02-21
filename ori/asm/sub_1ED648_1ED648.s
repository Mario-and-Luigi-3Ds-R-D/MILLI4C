PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R5, =0x401
VPUSH           {D8-D9}
VLDM            R2, {S0-S1}
VCVT.S32.F32    S0, S0
VCVT.S32.F32    S1, S1
VMOV            R1, S0
VMOV            R0, S1
SXTH            R2, R1
SXTH            R1, R0
VMOV            S0, R2
VMOV            S1, R1
MOV             R0, R5
VCVT.F32.S32    S16, S0
VCVT.F32.S32    S17, S1
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R5
VCVT.F32.U32    S18, S0
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
VSUB.F32        S1, S16, S18
VCVT.F32.U32    S0, S0
VSTR            S1, [R4]
VSUB.F32        S0, S0, S17
VSTR            S0, [R4,#4]
VPOP            {D8-D9}
POP             {R4-R6,PC}
