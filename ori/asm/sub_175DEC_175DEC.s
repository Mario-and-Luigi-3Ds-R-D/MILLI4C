PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x84]
TST             R0, #2
BEQ             loc_175E1C
LDR             R0, [R4]
LDR             R1, [R0,#0x28]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x84]
ORR             R0, R0, #8
STR             R0, [R4,#0x84]
LDR             R0, =0x758
LDRH            R0, [R0,R4]
SUB             R1, R0, #0xFF00
SUBS            R1, R1, #0xFF
BEQ             loc_175E40
MOV             R2, #0
MOV             R1, R2
VLDR            S0, =1.0
BL              sub_145730
MOV             R1, #0
STR             R1, [R4,#0x648]
LDR             R12, [R4,#0x464]
MOV             R3, #0x14
BIC             R12, R12, #0x700
ORR             R12, R12, #0x300
STR             R12, [R4,#0x464]
LDR             R0, [R4,#0x4EC]
BIC             R0, R0, #0xF000
ORR             R0, R0, #0x2000
STR             R0, [R4,#0x4EC]
LDRB            R0, [R4,#0x75C]
BIC             R0, R0, #7
ORR             R0, R0, #2
STRB            R0, [R4,#0x75C]
STRB            R3, [R4,#0x75D]
POP             {R4,PC}
