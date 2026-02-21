PUSH            {R4-R8}
ADD             R6, R0, #8
LDRB            R3, [R0]
LDRB            R7, [R0,#4]
LDRB            R5, [R0,#1]
CMP             R3, #0
LDM             R6, {R6,R8}
MOVNE           R4, #1
MOVEQ           R4, #0
CMP             R2, #0
ORR             R4, R4, R7,LSL#4
LDR             R12, =0xF0105
ORR             R2, R4, R5,LSL#8
ORR             R2, R2, R6,LSL#16
ORR             R2, R2, R8,LSL#24
STM             R1!, {R2,R12}
ADD             R3, R12, #1
LDRB            R2, [R0,#0x11]
LDRB            R12, [R0,#0x12]
LDRB            R4, [R0,#0x10]
MOV             R2, R2,LSL#4
ORR             R2, R2, R12,LSL#8
ORR             R2, R2, R4
STRD            R2, R3, [R1],#8
MOVEQ           R0, R1
BEQ             loc_11DF94
LDR             R0, [R0,#0x14]
POP             {R4-R8}
MOV             R2, #1
ADD             R0, R0, #0x7C ; '|'
B               sub_125580
POP             {R4-R8}
BX              LR
