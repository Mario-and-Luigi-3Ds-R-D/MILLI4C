PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #0
STRB            R0, [R4,#4]
LDR             R0, [R4]
VLDR            S0, =1.0
VLDR            S1, [R0,#0x3B0]
ADD             R0, R4, #0xC
BL              sub_5A12F8
LDR             R0, [R4,#8]
LDR             R1, [R0,#0x24]
ADD             R0, R0, #0x1C4
STR             R1, [R4,#0x74]
LDR             R1, [R4]
VLDR            S0, [R1,#0x3B0]
POP             {R4,LR}
ADD             R1, R1, #0x3B4
B               sub_5A2138
