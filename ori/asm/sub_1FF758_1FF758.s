PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
VLDR            S0, [R0,#0x1C]
BL              sub_1F3BF4
VMOV.F32        S16, S0
VLDR            S0, [R4,#0x18]
MOV             R0, R4
BL              sub_1F3BC8
VMOV.F32        S1, S16
VPOP            {D8}
MOV             R2, #0
LDR             R0, =0x10001
POP             {R4,LR}
MOV             R1, R2
B               sub_1459F8
