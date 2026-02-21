PUSH            {R4-R6,LR}
BL              sub_186648
LDR             R4, =off_6ADA60
LDR             R12, =off_6AD654
LDR             R5, =0x2674
ADD             R3, R4, #0x18
STR             R3, [R0,#0x758]
STR             R4, [R0,#0xE0]
VLDR            S0, =0.0
MOV             R2, #0xC8
ADD             R1, R0, #0x2400
STR             R12, [R0]
STRH            R2, [R5,R0]
VSTR            S0, [R1,#0x278]
VSTR            S0, [R1,#0x27C]
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0xE0
STR             R1, [R0,#0x4EC]
POP             {R4-R6,PC}
