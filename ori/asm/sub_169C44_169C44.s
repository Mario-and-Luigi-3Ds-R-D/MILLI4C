PUSH            {R4,LR}
MOV             R4, R0
VLDR            S0, =0.0
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0xC4]
LDR             R0, [R4]
LDR             R1, [R0,#0x220]
MOV             R0, R4
BLX             R1
ADD             R4, R4, #0x2600
ADD             R4, R4, #0xAA
MOV             R0, #0
STRB            R0, [R4]
POP             {R4,PC}
