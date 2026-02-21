PUSH            {R4-R8}
MOV             R4, #0xFFFFFFFF
MOV             R5, #0
LDR             R12, =off_6B3250
LDR             R7, [SP,#0x14+arg_0]
MOV             R8, #0x10
STR             R12, [R0]
LDR             R6, [R0,#0x84]
ADD             R12, R0, #0x14
CMP             R3, #0
AND             R6, R6, #0xE0000000
STR             R6, [R0,#0x84]
STRB            R4, [R0,#0x88]
STRB            R4, [R0,#0x89]
STRB            R4, [R0,#0x8A]
STRB            R4, [R0,#0x8B]
STRB            R4, [R0,#0x8C]
STRB            R4, [R0,#0x8D]
STRB            R4, [R0,#0x8E]
STR             R5, [R0,#0x90]
ADD             R6, R0, #0x98
STR             R5, [R0,#0x94]
STR             R6, [R0,#0x3C]
ADD             R4, R0, #0xD8
STRB            R8, [R12,#0x26]
STR             R4, [R12,#0x2C]
LDRB            R4, [R12,#0x27]
STRH            R5, [R12,#0x24]
BIC             R4, R4, #0xF
ORR             R4, R4, #1
AND             R4, R4, #0xF
STRB            R4, [R12,#0x27]
LDR             R4, [R12,#0x70]
AND             R4, R4, #0xE0000000
STR             R4, [R12,#0x70]
ORR             R12, R4, #1
STR             R1, [R0,#4]
STR             R12, [R0,#0x84]
STR             R0, [R0,#0x94]
STRB            R2, [R0,#0xDC]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #0xF
STRB            R1, [R0,#0xDE]
BEQ             loc_22D020
LDR             R2, [R3,#0x14]
BIC             R1, R1, #1
MOV             R2, R2,LSL#30
AND             R2, R7, R2,LSR#31
ORR             R1, R1, R2
STRB            R1, [R0,#0xDE]
POP             {R4-R8}
BX              LR
