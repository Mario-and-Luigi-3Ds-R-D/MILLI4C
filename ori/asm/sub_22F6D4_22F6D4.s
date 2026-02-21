PUSH            {R4,LR}
VPUSH           {D8}
VMOV.F32        S17, S0
VLDR            S0, =1.5708
VMOV.F32        S16, S2
VSUB.F32        S0, S1, S0
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, =1.0
VABS.F32        S0, S0
VDIV.F32        S2, S1, S16
VSUB.F32        S1, S2, S1
VMUL.F32        S1, S1, S0
VMOV.F32        S0, S17
VMLA.F32        S0, S17, S1
VPOP            {D8}
POP             {R4,PC}
