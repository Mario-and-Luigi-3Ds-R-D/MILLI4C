PUSH            {R4-R8,LR}
MOV             R4, R0
NOP
LDR             R0, [R4,#4]
MOV             R5, #1
STRB            R5, [R0,#0xAAC]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x5E0]
ORR             R1, R1, #7
STR             R1, [R0,#0x5E0]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, R5
BLX             R2
LDR             R0, [R4,#4]
ADD             R7, R4, #0x100
MOV             R6, #0xFFFFFFFF
MOV             R12, #0
LDR             R1, [R0,#0x5E0]
VLDR            S0, =0.0
BIC             R1, R1, #8
STR             R1, [R0,#0x5E0]
LDR             R1, [R4,#4]
LDR             R0, [R1,#0x648]
ORR             R0, R0, #1
STR             R0, [R1,#0x648]
LDR             R1, [R4,#4]
ORR             R0, R0, #4
BIC             R2, R0, #0x20 ; ' '
STR             R0, [R1,#0x648]
LDR             R3, [R4,#4]
BIC             R0, R2, #2
ORR             R1, R0, #0x10
STR             R2, [R3,#0x648]
LDR             R3, [R4,#4]
BIC             R2, R1, #0x80
STR             R0, [R3,#0x648]
LDR             R3, [R4,#4]
ORR             R0, R2, #8
STR             R1, [R3,#0x648]
LDR             R1, [R4,#4]
BIC             R3, R0, #0x40 ; '@'
STR             R2, [R1,#0x648]
LDR             R1, [R4,#4]
STR             R0, [R1,#0x648]
LDR             R0, [R4,#4]
STR             R3, [R0,#0x648]
LDR             R0, [R4,#4]
ADD             R3, R4, #0x1C0
LDR             R1, [R0,#0x658]
BIC             R1, R1, #0xC0000000
ORR             R1, R1, #0x40000000
STR             R1, [R0,#0x658]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R2, [R4,#4]
BIC             R0, R1, #0x100
BIC             R1, R0, #0xF000
STR             R0, [R2,#0x4EC]
LDR             R0, [R4,#4]
BIC             R2, R1, #0x400
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#4]
STR             R2, [R0,#0x4EC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xB6]
BIC             R1, R1, #1
STRH            R1, [R0,#0xB6]
LDR             R2, [R4,#4]
ADD             R2, R2, #0x108
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
LDRH            R0, [R4,#8]
ORR             R0, R0, #0x8000
ORR             R0, R0, #0x3C ; '<'
STRH            R0, [R4,#8]
LDRH            R0, [R4,#0xA]
ORR             R0, R0, #0x8000
STRH            R0, [R4,#0xA]
STRH            R6, [R7,#0xE4]
STRB            R5, [R4,#0x1D2]
STRB            R12, [R4,#0x1D1]
VSTR            S0, [R4,#0x1CC]
STRB            R12, [R4,#0x1D0]
POP             {R4-R8,PC}
