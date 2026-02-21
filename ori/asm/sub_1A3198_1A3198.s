PUSH            {R4-R6,LR}
LDR             R4, =off_6CE388
VPUSH           {D8}
LDR             R0, [R4]
LDR             R0, [R0,#0x98]
VLDR            S16, [R0,#0x34C]
MOV             R0, #0
BL              sub_58F1A0
LDR             R5, =off_6CE970
MOV             R1, R0
VMOV.F32        S0, S16
LDR             R0, [R5]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x330
BL              sub_5A2138
LDR             R0, [R4]
LDR             R0, [R0,#0x98]
VLDR            S16, [R0,#0x34C]
MOV             R0, #0
BL              sub_58F1A0
ADD             R1, R0, #0xC
LDR             R0, [R5]
VMOV.F32        S0, S16
VPOP            {D8}
ADD             R0, R0, #0x10C000
POP             {R4-R6,LR}
ADD             R0, R0, #0x3D8
B               sub_5A2138
