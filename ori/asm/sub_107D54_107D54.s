CMP             R2, #0
BXLE            LR
PUSH            {R4-R6}
ADD             R12, R3, #2
ADD             R0, R3, #4
VLDR            S0, =0.0019531
ADD             R4, R1, #4
ADD             R5, R1, #8
LDRSH           R6, [R3],#6
SUBS            R2, R2, #1
VMOV            S1, R6
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VSTR            S1, [R1]
LDRSH           R6, [R12],#6
ADD             R1, R1, #0xC
VMOV            S1, R6
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VSTR            S1, [R4]
LDRSH           R6, [R0],#6
ADD             R4, R4, #0xC
VMOV            S1, R6
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VSTR            S1, [R5]
ADD             R5, R5, #0xC
BNE             loc_107D74
POP             {R4-R6}
BX              LR
