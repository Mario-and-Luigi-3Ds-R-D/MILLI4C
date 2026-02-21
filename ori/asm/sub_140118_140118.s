PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
MOV             R6, #0
LDR             R1, [R0]
LDRB            R2, [R1],#1
STR             R1, [R0]
AND             R12, R2, #0x7F
TST             R2, #0x80
ORR             R6, R12, R6,LSL#7
BNE             loc_140128
LDR             R1, [R4,#4]
LDR             R0, [R1]
LDRB            R2, [R0,#1]
LDRB            R3, [R0],#2
STR             R0, [R1]
ADD             R0, R4, #0x1A4
ORR             R2, R3, R2,LSL#8
MOV             R5, R2,LSL#16
LDR             R0, [R0,#0xC]
ADD             R1, R0, R5
MOV             R2, R6
ADD             R0, R4, #0x1A4
POP             {R4-R6,LR}
MOV             R3, #0
NOP
