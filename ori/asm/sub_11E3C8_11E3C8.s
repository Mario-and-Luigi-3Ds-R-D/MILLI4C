PUSH            {R4,R5}
LDRB            R3, [R0]
LDRB            R4, [R0,#2]
CMP             R3, #0
LDR             R3, [R0,#4]
MOVNE           R12, #1
MOVEQ           R12, #0
ORR             R12, R12, R4,LSL#4
LDRB            R3, [R3,#0x50]
TST             R3, #1
MOVNE           R4, #0x100
MOVEQ           R4, #0
TST             R3, #2
ORR             R12, R12, R4
MOVNE           R4, #0x200
MOVEQ           R4, #0
TST             R3, #4
ORR             R12, R12, R4
MOVNE           R4, #0x400
MOVEQ           R4, #0
TST             R3, #8
ORR             R3, R12, R4
LDRB            R4, [R0,#1]
MOVNE           R12, #0x800
MOVEQ           R12, #0
CMP             R4, #0
ORR             R3, R3, R12
MOVNE           R12, #0x1000
MOVEQ           R12, #0
ORR             R12, R12, R3
LDR             R3, =0xF0107
STR             R12, [R1],#4
CMP             R2, #0
STR             R3, [R1],#4
MOVEQ           R0, R1
BEQ             loc_11E46C
LDR             R0, [R0,#4]
POP             {R4,R5}
MOV             R2, #1
ADD             R0, R0, #0x7C ; '|'
B               sub_125580
POP             {R4,R5}
BX              LR
