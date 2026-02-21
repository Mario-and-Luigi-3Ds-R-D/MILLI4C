PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R5, R0
LDR             R3, [R2,#0x2C]
LDRB            R1, [R2,#0x2F]
MOV             R7, #7
BIC             R3, R3, #0xFF000000
ORRS            R1, R3, R1,LSL#24
MOVEQ           R4, #0
ADDNE           R4, R2, R1
CMP             R4, #0
MOVEQ           R5, #0
BEQ             loc_20B16C
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063C0 - 0x106000)]
MOV             R0, #0x1BC
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_20B15C
MOV             R2, R6
MOV             R1, R5
BL              sub_4E1B20
MOV             R5, R0
MOV             R2, R7
MOV             R1, R4
MOV             R0, R5
BL              sub_4E1A5C
MOV             R0, R5
POP             {R4-R8,PC}
