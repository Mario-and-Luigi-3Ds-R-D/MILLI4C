LDR             R1, [R0,#4]
CMP             R1, #0
BEQ             locret_10D530
LDR             R2, =0x270F
MOV             R1, #0
ADD             R3, R0, #4
STRB            R1, [R0]
STM             R3, {R1,R2}
VLDR            S0, =1.0
STR             R1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
STR             R1, [R0,#0x14]!
VLDR            S0, =0.0
ADD             R0, R0, #4
VSTR            S0, [R0]
STR             R1, [R0,#4]
BX              LR
