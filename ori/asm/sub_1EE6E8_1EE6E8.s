PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x28 ; '('
BL              sub_10A358
MOVS            R1, R0
BEQ             loc_1EE748
MOV             R0, #0
STR             R0, [R1]
STR             R0, [R1,#4]
STR             R0, [R1,#8]
STR             R0, [R1,#0xC]
STR             R0, [R1,#0x10]
STR             R0, [R1,#0x14]
STR             R0, [R1,#0x18]
STR             R0, [R1,#0x1C]
STR             R0, [R1,#0x20]
STR             R0, [R1,#0x24]
LDRB            R2, [R1,#0x1C]
BIC             R2, R2, #1
STRB            R2, [R1,#0x1C]
LDR             R6, =off_6D1648
MOV             R0, #2
MOV             R2, #4
MOV             R3, #8
STR             R1, [R6,#(off_6D164C - 0x6D1648)]
LDR             R12, [R4,#0x88]
STR             R12, [R1]
LDR             R12, [R4,#0x8C]
STR             R12, [R1,#4]
LDR             R12, [R4,#0x90]
STR             R12, [R1,#8]
LDR             R12, [R4,#0xC4]
STR             R12, [R1,#0x14]
LDR             R12, [R4,#0xBC]
STR             R12, [R1,#0xC]
LDR             R12, [R4,#0xC0]
STR             R12, [R1,#0x10]
LDR             R12, [R4,#0x148]
STR             R12, [R1,#0x20]
STRB            R5, [R1,#0x24]
LDR             R5, [R4,#0xC8]
LDRB            R12, [R1,#0x25]
MOV             R5, R5,LSL#27
BIC             R12, R12, #1
ORR             R12, R12, R5,LSR#31
STRB            R12, [R1,#0x25]
LDR             R5, [R4,#0xC8]
BIC             R12, R12, #2
AND             R0, R0, R5,LSR#4
ORR             R0, R0, R12
STRB            R0, [R1,#0x25]
LDR             R12, [R4,#0xC8]
BIC             R0, R0, #4
AND             R2, R2, R12,LSR#5
ORR             R0, R0, R2
STRB            R0, [R1,#0x25]
LDR             R2, [R4,#0x14C]
BIC             R0, R0, #8
AND             R2, R3, R2,LSR#10
ORR             R0, R0, R2
STRB            R0, [R1,#0x25]
LDR             R0, [R4,#0xB8]
ADD             R2, R1, #0x26 ; '&'
STR             R0, [R1,#0x1C]
LDR             R0, [R4,#0x9C]
ADD             R1, R1, #0x18
BL              sub_5D1DFC
LDR             R0, [R6,#(off_6D164C - 0x6D1648)]
POP             {R4-R6,PC}
