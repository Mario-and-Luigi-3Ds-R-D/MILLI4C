PUSH            {R4-R6,LR}
CMP             R0, #0x10
MOV             R4, R1
VPUSH           {D8}
VMOV.F32        S16, S0
MOV             R5, R2
BCC             loc_22EF0C
VLDR            S0, =0.0
VSTR            S0, [R1]
VSTR            S0, [R2]
VPOP            {D8}
POP             {R4-R6,PC}
VMOV            S1, R0
VLDR            S2, =22.5
VLDR            S0, =90.0
VCVT.F32.U32    S1, S1
VNMLS.F32       S0, S1, S2
VLDR            S1, =0.71111
VMUL.F32        S17, S0, S1
VMOV.F32        S0, S17
BL              sub_464318
VMUL.F32        S0, S0, S16
VSTR            S0, [R4]
VMOV.F32        S0, S17
BL              sub_464380
VMUL.F32        S0, S0, S16
VSTR            S0, [R5]
VPOP            {D8}
POP             {R4-R6,PC}
