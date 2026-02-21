PUSH            {R4-R6}
LDR             R4, =0xE40100
LDRB            R5, [R0]
LDR             R3, =0xF0101
SUB             R12, R4, #0xE10000
CMP             R5, #0
STR             R4, [R1],#4
BEQ             loc_11E01C
STR             R12, [R1],#4
LDR             R12, [R0,#1]
LDRB            R5, [R0,#5]
LDRB            R6, [R0,#4]
LDRB            R4, [R0,#6]
BIC             R12, R12, #0xFF000000
ORR             R12, R12, R5,LSL#20
ORR             R12, R12, R6,LSL#24
ORR             R12, R12, R4,LSL#28
STR             R12, [R1],#4
MOV             R12, #6
STR             R3, [R1],#4
ADD             R3, R3, #1
STR             R12, [R1],#4
STR             R3, [R1],#4
LDR             R12, [R0,#7]
LDRB            R3, [R0,#0xA]
BIC             R12, R12, #0xFF000000
ORR             R12, R12, R3,LSL#24
LDR             R3, =0xF0103
STR             R12, [R1],#4
STR             R3, [R1],#4
B               loc_11E02C
LDR             R4, =0x1010000
STR             R12, [R1],#4
STR             R4, [R1],#4
STR             R3, [R1],#4
CMP             R2, #0
MOVEQ           R0, R1
BEQ             loc_11E04C
LDR             R0, [R0,#0xC]
POP             {R4-R6}
MOV             R2, #1
ADD             R0, R0, #0x7C ; '|'
B               sub_125580
POP             {R4-R6}
BX              LR
