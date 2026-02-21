PUSH            {R4,LR}
BL              sub_194BD0
LDR             R2, =off_6B3D84
MOV             R1, #0
STR             R1, [R0,#0xB8]
STR             R2, [R0]
VLDR            S0, =0.0
STRB            R1, [R0,#0xBC]
STRB            R1, [R0,#0xBD]
VSTR            S0, [R0,#0xF8]
VSTR            S0, [R0,#0xFC]
POP             {R4,PC}
