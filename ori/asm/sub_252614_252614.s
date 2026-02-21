PUSH            {R4-R6,LR}
MOV             R6, R0
VLDR            S2, =6.2832
MOV             R4, R1
VPUSH           {D8-D9}
VMUL.F32        S17, S0, S2
VMUL.F32        S0, S1, S2
VLDR            S18, =40.744
MOV             R5, R2
VMUL.F32        S16, S0, S18
VMOV.F32        S0, S16
BL              sub_464318
VMUL.F32        S18, S17, S18
VMOV.F32        S19, S0
VMOV.F32        S0, S18
BL              sub_464318
VMUL.F32        S0, S19, S0
VSTR            S0, [R4,#8]
VMOV.F32        S0, S16
BL              sub_464318
VMOV.F32        S17, S0
VMOV.F32        S0, S18
BL              sub_464380
VMUL.F32        S0, S17, S0
VSTR            S0, [R4]
VMOV.F32        S0, S16
BL              sub_464380
VSTR            S0, [R4,#4]
VMOV.F32        S0, S18
BL              sub_464318
VMOV.F32        S17, S0
VMOV.F32        S0, S18
VLDR            S16, =0.0
BL              sub_464380
VNEG.F32        S4, S0
VMOV.F32        S0, S17
VSTR            S0, [R5]
VSTR            S16, [R5,#4]
VSTR            S4, [R5,#8]
VLDM            R4, {S5-S7}
VMUL.F32        S1, S5, S16
VMUL.F32        S3, S6, S4
VMUL.F32        S2, S7, S0
VMLS.F32        S1, S6, S0
VMLS.F32        S3, S7, S16
VMLS.F32        S2, S5, S4
VLDR            S4, =1.0
VMUL.F32        S0, S3, S3
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VSQRT.F32       S5, S0
VDIV.F32        S0, S4, S5
VMUL.F32        S3, S3, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S1, S0
VSTR            S3, [R6]
VSTR            S2, [R6,#4]
VSTR            S0, [R6,#8]
VPOP            {D8-D9}
POP             {R4-R6,PC}
