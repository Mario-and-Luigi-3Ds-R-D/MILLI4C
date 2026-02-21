PUSH            {R4}
LDR             R1, [R0,#4]
LDR             R2, [R1,#0x5E0]
BIC             R2, R2, #7
STR             R2, [R1,#0x5E0]
LDR             R2, [R0,#4]
LDR             R1, [R2,#0x648]
ORR             R1, R1, #1
STR             R1, [R2,#0x648]
LDR             R2, [R0,#4]
ORR             R1, R1, #4
STR             R1, [R2,#0x648]
LDR             R2, [R0,#4]
BIC             R1, R1, #0x20 ; ' '
BIC             R3, R1, #2
STR             R1, [R2,#0x648]
LDR             R12, [R0,#4]
BIC             R1, R3, #0x10
BIC             R2, R1, #0x80
STR             R3, [R12,#0x648]
LDR             R3, [R0,#4]
BIC             R12, R2, #8
BIC             R4, R12, #0x40 ; '@'
STR             R1, [R3,#0x648]
LDR             R1, [R0,#4]
STR             R2, [R1,#0x648]
LDR             R1, [R0,#4]
STR             R12, [R1,#0x648]
LDR             R1, [R0,#4]
STR             R4, [R1,#0x648]
LDR             R1, [R0,#4]
LDR             R2, [R1,#0x658]
BIC             R2, R2, #0xC0000000
ORR             R2, R2, #0x40000000
STR             R2, [R1,#0x658]
LDR             R2, [R0,#4]
LDR             R1, [R2,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R2,#0x4EC]
LDR             R2, [R0,#4]
BIC             R1, R1, #0x100
STR             R1, [R2,#0x4EC]
BIC             R2, R1, #0xF000
LDR             R1, [R0,#4]
BIC             R3, R2, #0x400
STR             R2, [R1,#0x4EC]
LDR             R1, [R0,#4]
STR             R3, [R1,#0x4EC]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xB6]
BIC             R1, R1, #1
STRH            R1, [R0,#0xB6]
POP             {R4}
BX              LR
