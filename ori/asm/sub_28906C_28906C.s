LDR             R1, [R0,#0x688]
VLDR            S0, =0.0
LDR             R1, [R1,#0x6C]
VSTR            S0, [R0,#0x3AC]
STR             R1, [R0,#0x3B0]
MOV             R1, #8
STRB            R1, [R0]
LDR             R0, =off_6CDCE8
MOV             R1, #0
LDR             R0, [R0]
B               sub_292ED4
