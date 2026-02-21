PUSH            {R4,LR}
MOV             R4, R0
BL              sub_194FC0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1BC
MOV             R2, #0x10
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x400
ADD             R0, R0, #0x224
MOV             R2, #0x10
MOV             R1, #0
BL              sub_110BE4
VLDR            S0, =0.0
ADD             R0, R4, #0x400
VSTR            S0, [R0,#0x234]
VSTR            S0, [R0,#0x1CC]
POP             {R4,PC}
