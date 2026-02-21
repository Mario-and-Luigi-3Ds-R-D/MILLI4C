VLDR            S1, =0.0
VSTR            S0, [R0,#8]
ADD             R2, R0, #0xC
MOV             R1, #0
VSTM            R2, {S0-S1}
STR             R1, [R0]
STR             R1, [R0,#4]
BX              LR
