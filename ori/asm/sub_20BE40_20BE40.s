PUSH            {R4-R8,LR}
CMN             R3, #1
MOV             R8, R1
LDR             R1, [R2]
LDRB            R12, [R2,#3]
MOV             R7, R0
BIC             R1, R1, #0xFF000000
LDR             R0, [SP,#0x18+arg_8]
ORR             R1, R1, R12,LSL#24
LDR             R5, [SP,#0x18+arg_4]
LDR             R6, [SP,#0x18+arg_0]
ADDEQ           R1, R2, R1,LSL#2
ADDEQ           R4, R1, #4
BEQ             loc_20BE94
ADD             R1, R2, R3,LSL#2
LDR             R3, [R1,#4]!
LDRB            R1, [R1,#3]
BIC             R3, R3, #0xFF000000
ORRS            R1, R3, R1,LSL#24
ADDNE           R4, R2, R1
BEQ             loc_20BEA8
CMP             R4, #0
BEQ             loc_20BEA8
CMP             R5, #0
BNE             loc_20BF0C
B               loc_20BECC
CMP             R0, #0
BEQ             loc_20BF1C
LDR             R1, [R2,#4]
LDRB            R0, [R2,#7]
BIC             R1, R1, #0xFF000000
ORRS            R0, R1, R0,LSL#24
ADDSNE          R4, R2, R0
BEQ             loc_20BF1C
B               loc_20BE9C
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
BEQ             loc_20BF0C
MOV             R2, R8
MOV             R1, R7
BL              sub_4E1B20
MOV             R5, R0
MOV             R2, R6
MOV             R1, R4
MOV             R0, R5
BL              sub_4E1A5C
MOV             R0, R5
POP             {R4-R8,PC}
