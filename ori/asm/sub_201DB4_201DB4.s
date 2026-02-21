PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
CMP             R1, #0
LDRB            R0, [R0,#0xDE]
AND             R0, R0, #1
BEQ             loc_201E1C
CMP             R0, #0
BNE             locret_201E18
LDR             R0, [R4]
LDR             R1, [R0,#0x58]
MOV             R0, R4
BLX             R1
LDR             R3, [R4,#4]
VLDR            S0, =0.0
MOV             R0, #0
MOV             R2, #0x1E4
VSTR            S0, [R3,#0xF4]
STRB            R0, [R4,#0x1D1]
STRB            R0, [R4,#0x1D3]
STRB            R0, [R4,#0x1D4]
VSTR            S0, [R4,#0x1D8]
MOV             R1, #0xFFFFFFFF
VSTR            S0, [R4,#0x1DC]
STRH            R1, [R2,R4]
POP             {R4,PC}
CMP             R0, #0
BEQ             locret_201E18
LDR             R0, [R4]
LDR             R1, [R0,#0x6C]
MOV             R0, R4
POP             {R4,LR}
BX              R1
