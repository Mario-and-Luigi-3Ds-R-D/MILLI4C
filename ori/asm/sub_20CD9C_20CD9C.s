PUSH            {R4,LR}
VPUSH           {D8}
LDR             R0, [R2,#0x10]
LDR             R1, [R2,#8]
VLDR            S16, [R2,#0x6C]
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
LDR             R0, [R0]
BL              sub_52A63C
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
MOV             R1, R4
BL              sub_218F60
VPOP            {D8}
MOV             R0, #0
POP             {R4,PC}
