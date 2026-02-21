PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xDE]
TST             R0, #1
BEQ             locret_186530
LDR             R0, =0x468
LDRH            R0, [R0,R4]
SUB             R0, R0, #8
CMP             R0, #8; switch 8 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_186438; jumptable 00186438 default case, cases 4,6
DCD loc_186460; jump table for switch statement
LDR             R0, [R4]; jumptable 00186438 cases 0-3,5,7
LDR             R1, [R0,#0x1D0]
MOV             R0, R4
BLX             R1
B               loc_186484
LDR             R0, [R4]; jumptable 00186438 default case, cases 4,6
LDR             R1, [R0,#0x3F0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x288]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xA4]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xC4]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xA8]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xC8]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
ADD             R1, R4, #0x3F8
LDR             R2, [R0,#0x184]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x400
ADD             R1, R1, #0x28 ; '('
MOV             R5, R1
LDR             R2, [R0,#0x1A0]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x3F8
LDR             R2, [R0,#0x188]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x1A4]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R2
POP             {R4-R6,PC}
