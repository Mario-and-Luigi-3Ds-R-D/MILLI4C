PUSH            {R4,LR}
BL              sub_2CF53C
LDR             R2, =off_6B419C
MOV             R1, #0
VLDR            S0, =0.0
STR             R2, [R0]
STRH            R1, [R0,#0x48]
VSTR            S0, [R0,#0x30]
POP             {R4,PC}
