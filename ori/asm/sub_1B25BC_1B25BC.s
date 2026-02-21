ADD             R3, R0, #0x1000
ADD             R0, R0, #4
VLDR            S0, =0.0
STM             R0, {R1,R2}
MOV             R12, #0
STR             R12, [R3,#0x204]
VSTR            S0, [R3,#0x1D8]
VSTR            S0, [R3,#0x1DC]
BX              LR
