PUSH            {R4}
LDRB            R3, [R0]
LDRB            R12, [R0,#2]
LDRB            R4, [R0,#1]
CMP             R3, #0
MOVNE           R3, #1
ORR             R3, R3, R12,LSL#4
ORR             R12, R3, R4,LSL#8
LDR             R3, =0x30104
STR             R12, [R1],#4
CMP             R2, #0
STR             R3, [R1],#4
MOVEQ           R0, R1
BEQ             loc_11E3BC
LDR             R0, [R0,#4]
POP             {R4}
MOV             R2, #1
ADD             R0, R0, #0x7C ; '|'
B               sub_125580
POP             {R4}
BX              LR
