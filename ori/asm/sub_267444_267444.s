PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
ADD             R0, R0, #0x40 ; '@'
BL              sub_5A18EC
LDR             R0, [R4]
VMOV.F32        S0, S16
VLDR            S1, [R0,#0x3C0]
ADD             R0, R4, #0x40 ; '@'
VPOP            {D8}
POP             {R4,LR}
B               sub_5A12F8
