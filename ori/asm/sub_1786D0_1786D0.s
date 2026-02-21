PUSH            {R4-R8,LR}
LDR             R4, [SP,#0x18+arg_8]
LDR             R5, [SP,#0x18+arg_4]
LDR             R6, [SP,#0x18+arg_0]
LDR             R0, [R4,#0x70]
TST             R0, #1
BEQ             loc_1786F8
TST             R0, #2
CMPNE           R3, #4
BEQ             loc_178700
MOV             R0, #0
POP             {R4-R8,PC}
MOV             R12, #0x70 ; 'p'
BIC             R0, R0, #0x7C ; '|'
AND             R12, R12, R3,LSL#4
ORR             R0, R0, #2
ORR             R0, R0, R12
MOV             R7, #0x380
AND             R3, R7, R6,LSL#7
BIC             R0, R0, #0x380
MOV             R12, #0x8000000
ORR             R0, R0, R3
AND             R2, R12, R2,LSL#27
BIC             R0, R0, #0x8000000
ORR             R0, R0, R2
STR             R0, [R4,#0x70]
STR             R1, [R4]
LDRB            R1, [R4,#0x27]
MOV             R0, #0
BIC             R1, R1, #0xF0
STRB            R1, [R4,#0x27]
STRH            R0, [R4,#0x24]
LDRB            R1, [R4,#0x26]
LDR             R0, [R4,#0x28]
MOV             R2, R1,LSL#2
MOV             R1, #0
BL              sub_110BE4
LDRB            R1, [R4,#0x27]
LDR             R0, [R4,#0x2C]
MOV             R1, R1,LSL#28
MOV             R2, R1,LSR#26
MOV             R1, #0
BL              sub_110BE4
CMP             R5, #0
MOV             R1, #0xFFFFFFFF
BEQ             loc_178814
LDR             R0, [R5,#0x70]
MOV             R2, #4
MOV             R3, R0,LSL#25
CMP             R2, R3,LSR#29
BNE             loc_1787F0
LDR             R1, [R4,#0x70]
AND             R0, R0, #0x1C00
CMP             R6, #1
BIC             R1, R1, #0x1C00
ORR             R0, R0, R1
STR             R0, [R4,#0x70]
LDR             R0, [R5,#0x80]
LDRB            R0, [R0,#0xDC]
STRB            R0, [R4,#0x79]
BEQ             loc_1787D4
CMP             R6, #2
LDRBEQ          R0, [R5,#0x78]
STRBEQ          R0, [R4,#0x78]
B               loc_17880C
LDRB            R0, [R5,#0x74]
STRB            R0, [R4,#0x74]
LDRB            R0, [R5,#0x75]
STRB            R0, [R4,#0x75]
LDRB            R0, [R5,#0x76]
STRB            R0, [R4,#0x76]
B               loc_17880C
LDR             R2, [R4,#0x70]
MOV             R3, #0x1C00
STRB            R1, [R4,#0x79]
AND             R0, R3, R0,LSL#6
BIC             R1, R2, #0x1C00
ORR             R0, R0, R1
STR             R0, [R4,#0x70]
MOV             R0, #1
POP             {R4-R8,PC}
LDR             R0, [R4,#0x70]
STRB            R1, [R4,#0x79]
BIC             R0, R0, #0x1C00
ORR             R0, R0, #0x1400
B               loc_178808
