PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
VLDR            S0, =0.0
LDR             R0, [R6]
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R5, [R1,#4]
VSTR            S0, [R4,#0xB0]
VSTR            S0, [R5,#0x110]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19AFE4
LDR             R0, [R4,#0x1A0]
BIC             R0, R0, #4
STR             R0, [R4,#0x1A0]
LDR             R0, [R5,#0x164]
BIC             R0, R0, #7
STR             R0, [R5,#0x164]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19A598
MOV             R0, #0
STR             R0, [R4,#0xA4]
POP             {R4-R6,PC}
