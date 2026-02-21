PUSH            {R3-R7,LR}
MOV             R6, R3
LDR             R3, [SP,#0x18+arg_0]
STR             R3, [SP,#0x18+var_18]
MOV             R3, R6
BL              sub_580DD4
LDR             R12, =off_6AF228
ADD             R2, R0, #0x700
MOV             R1, #0
ADD             R3, R12, #0x358
STR             R3, [R0,#0xE0]
STR             R12, [R0]
STRH            R1, [R2,#0x5A]
LDRB            R3, [R0,#0x75C]
MOV             R4, R0
ADD             R5, R0, #0x400
BIC             R3, R3, #0x77 ; 'w'
ORR             R3, R3, #8
STRB            R3, [R0,#0x75C]
STRB            R1, [R0,#0x75D]
LDR             R0, [R0,#0x648]
CMP             R6, #0
LDREQ           R3, =0xFFFF
BIC             R1, R0, #0x1000000
STR             R1, [R4,#0x648]
LDRHNE          R3, [R6,#0xC]
ADD             R5, R5, #0x248
BIC             R0, R1, #3
STRH            R3, [R2,#0x58]
STR             R0, [R5]
MOV             R2, #0x10
MOV             R1, #0
ADD             R0, R4, #0x760
BL              sub_110BE4
LDRB            R0, [R5]
STRB            R0, [R4,#0x649]
MOV             R0, R4
POP             {R3-R7,PC}
