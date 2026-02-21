LDRH            R2, [R0,#0xA]
MOV             R1, #0x20 ; ' '
MOV             R3, #0
CMP             R2, #0
BXLE            LR
PUSH            {R4-R6}
ADD             R6, R1, #0x10
LDR             R5, [R0]
LDR             R2, [R0,#0xC]
MOV             R12, R1
ADD             R1, R5, R6
MOV             R4, R6
STR             R1, [R2,R3,LSL#4]!
LDR             R1, [R0]
ADD             R3, R3, #1
LDRB            R5, [R1,R12]
ADD             R1, R12, #1
STRB            R5, [R2,#4]
LDR             R12, [R0]
LDRB            R12, [R12,R1]
ADD             R1, R1, #1
STRB            R12, [R2,#5]
LDR             R12, [R0]
LDRB            R12, [R12,R1]
ADD             R1, R1, #1
STRB            R12, [R2,#6]
LDR             R12, [R0]
LDRB            R12, [R12,R1]
ADD             R1, R1, #1
STRB            R12, [R2,#7]
LDR             R12, [R0]
LDR             R12, [R12,R1]
ADD             R1, R1, #4
STR             R12, [R2,#8]
ADD             R12, R12, R4
LDR             R4, [R0]
ADD             R12, R12, #0xF
LDRH            R1, [R4,R1]
STRH            R1, [R2,#0xC]
LDRH            R2, [R0,#0xA]
BIC             R1, R12, #0xF
CMP             R2, R3
BGT             loc_10D118
POP             {R4-R6}
BX              LR
