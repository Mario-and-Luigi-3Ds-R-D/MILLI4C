PUSH            {R4,LR}
LDR             R0, =off_6D1648
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VSUB.F32        S0, S16, S0
VPOP            {D8}
POP             {R4,PC}
