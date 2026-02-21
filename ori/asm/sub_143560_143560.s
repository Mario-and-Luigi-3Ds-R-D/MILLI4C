TST             R0, #3
PUSH            {R4,LR}
MOV             R4, R0
TSTEQ           R1, #3
BNE             loc_1435A0
LDR             LR, =0x1010101
SUBS            R2, R2, #4
BLT             loc_14359C
LDR             R3, [R1],#4
SUB             R12, R3, LR
BIC             R12, R12, R3
ANDS            R12, R12, LR,LSL#7
STREQ           R3, [R0],#4
BEQ             loc_143578
SUB             R1, R1, #4
ADD             R2, R2, #4
SUBS            R2, R2, #1
BLT             loc_1435C0
LDRB            R3, [R1],#1
CMP             R3, #0
STRB            R3, [R0],#1
BNE             loc_1435A0
MOV             R1, R2
BL              sub_12038C
MOV             R0, R4
POP             {R4,PC}
