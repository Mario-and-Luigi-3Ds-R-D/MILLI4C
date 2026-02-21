MOV             R3, R0
CMP             R2, #0
MOV             R0, R1
PUSH            {R4}
BEQ             loc_1256D8
LDR             R2, =sub_200080
MOV             R1, #0
STM             R0!, {R1,R2}
STR             R1, [R0],#4
STR             R1, [R0],#4
LDRB            R1, [R3,#0x1C]
LDRB            R2, [R3,#0x58]
LDRB            R12, [R3,#0x7C]
CMP             R1, #5
MOVNE           R1, #1
MOVEQ           R1, #0
CMP             R2, #0
MOVNE           R2, #1
CMP             R12, #0
ORR             R1, R1, R2,LSL#1
LDRB            R4, [R3,#0xA0]
MOVNE           R2, #1
MOVEQ           R2, #0
LDRB            R12, [R3,#0xA1]
ORR             R1, R1, R2,LSL#2
CMP             R4, #0
LDRB            R3, [R3,#0x7D]
MOVNE           R2, #1
MOVEQ           R2, #0
ORR             R1, R1, R12,LSL#8
CMP             R3, #0
ORR             R1, R1, R2,LSL#10
MOVNE           R2, #1
MOVEQ           R2, #0
ORR             R2, R1, R2,LSL#13
LDR             R1, =0xF0080
ORR             R2, R2, #0x11000
STR             R2, [R0],#4
STR             R1, [R0],#4
POP             {R4}
BX              LR
