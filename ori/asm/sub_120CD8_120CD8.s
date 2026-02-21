PUSH            {R4-R8,LR}
SUB             SP, SP, #8
MOV             R8, R0
LDR             R0, [SP,#0x20+arg_0]
MOV             R6, R2
MOV             R7, R3
CMP             R0, #0
BEQ             loc_120D64
CMP             R0, #1
BEQ             loc_120D38
CMP             R0, #2
LDRNE           R0, =0xE0E046BD
BNE             loc_120D7C
LDR             R0, [R8]
BIC             R1, R0, #1
MOV             R0, SP
BL              sub_12095C
ANDS            R1, R0, #0x80000000
BMI             loc_120D48
LDR             R4, [SP,#0x20+var_1C]
LDR             R5, [SP,#0x20+var_20]
STR             R4, [R8,#0x10]
STR             R5, [R8,#0xC]
B               loc_120D54
LDRD            R0, R1, [R8,#4]
ADDS            R6, R6, R0
ADC             R7, R1, R3
B               loc_120D64
MOV             R1, #0
STR             R1, [R8,#0xC]
STR             R1, [R8,#0x10]
MOVS            R1, R0,LSR#31
BNE             loc_120D7C
ADDS            R6, R6, R5
ADC             R7, R7, R4
ADD             SP, SP, #8
MOV             R2, R6
MOV             R3, R7
MOV             R0, R8
POP             {R4-R8,LR}
B               sub_128148
ADD             SP, SP, #8
POP             {R4-R8,PC}
