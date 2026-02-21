PUSH            {R4,LR}
VPUSH           {D8}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
VLDR            S16, [R2,#0x70]
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
LDR             R0, [R0]
BL              sub_52F538
VMOV.F32        S0, S16
MOV             R1, R4
BL              sub_501958
VPOP            {D8}
MOV             R0, #0
POP             {R4,PC}
