PUSH            {R4,LR}
VLDR            S0, [R2,#0x68]
VLDR            S1, =1.0
MOV             R3, R0
VSQRT.F32       S2, S0
LDRH            R0, [R2,#2]
MOV             R2, R1
MOV             R1, R3
VDIV.F32        S0, S1, S2
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
