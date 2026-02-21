PUSH            {R4,LR}
MOV             R4, R0
MOV             R3, #0
MOV             R2, R3
MOV             R0, #0x11C
BL              sub_10A358
CMP             R0, #0
BLNE            sub_536F90
STR             R0, [R4,#0xA4]
VLDR            S0, =0.015
VSTR            S0, [R0,#0x50]
POP             {R4,PC}
