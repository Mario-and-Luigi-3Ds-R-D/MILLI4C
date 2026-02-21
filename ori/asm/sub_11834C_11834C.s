CMP             R1, #0
PUSH            {R4-R6}
MOVNE           R2, #0x300
MOVEQ           R2, R2,LSL#8
STR             R2, [R0],#4
LDR             R2, =0x2025E
MOV             R4, #0
MOV             R5, #0xA
STR             R2, [R0],#4
LDR             R2, =0x900251
STR             R4, [R0],#4
MOV             R12, #5
STR             R2, [R0],#4
LDR             R2, =0xEAD0FEAD
SUB             R3, R0, #4
SUBS            R12, R12, #1
STR             R2, [R3,#4]
STR             R2, [R3,#8]!
BNE             loc_118388
AND             R3, R5, #1
SUB             R3, R5, R3
LDR             R6, =0x1D00200
ADD             R12, R0, R3,LSL#2
MOV             R5, #0x1E
STM             R12!, {R4,R6}
MOV             R0, #0xF
SUB             R3, R12, #4
SUBS            R0, R0, #1
STR             R2, [R3,#4]
STR             R2, [R3,#8]!
BNE             loc_1183B8
AND             R0, R5, #1
SUB             R0, R5, R0
CMP             R1, #0
ADD             R12, R12, R0,LSL#2
LDR             R0, =0x10229
MOVNE           R3, #2
MOVEQ           R3, #0
STR             R3, [R12],#4
MOV             R5, #0x1E
STM             R12!, {R0,R4,R6}
MOV             R3, #0xF
SUB             R0, R12, #4
SUBS            R3, R3, #1
STR             R2, [R0,#4]
STR             R2, [R0,#8]!
BNE             loc_1183F8
AND             R0, R5, #1
SUB             R0, R5, R0
LDR             R2, =0x10244
ADD             R0, R12, R0,LSL#2
STM             R0!, {R1,R2}
POP             {R4-R6}
BX              LR
