MOV             R1, #0
STRH            R1, [R0]
VLDR            S0, =NaN
STRB            R1, [R0,#2]
STR             R1, [R0,#4]
VSTR            S0, [R0,#8]
BX              LR
