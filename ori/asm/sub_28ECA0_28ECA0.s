PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #0xA
VPUSH           {D8}
MOV             R5, R1
STRB            R0, [R4,#0xA0]
LDR             R0, [R4,#0xC]
LDR             R1, [R4,#0x4D8]
VMOV.F32        S16, S0
LDR             R2, [R0]
LDR             R1, [R1,#8]
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, R5
BLX             R2
LDR             R0, [R4,#0xC]
VMOV.F32        S0, S16
ADD             R1, R4, #0xD8
ADD             R0, R0, #0x1DC
BL              sub_5A1FC8
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
VPOP            {D8}
MOV             R2, #0
POP             {R4-R6,LR}
MOV             R1, #0xF
B               sub_14C548
