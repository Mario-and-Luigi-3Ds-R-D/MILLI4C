PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R5, =off_6D242C
LDR             R2, =0x2010000
LDR             R6, =0x101
LDR             R12, [R5]
CMP             R0, R2
SUB             R1, R0, R2
BEQ             loc_12726C
BGT             loc_12721C
SUBS            R0, R0, R6,LSL#16
BEQ             loc_127248
CMP             R0, #0x10000
CMPNE           R0, #0x20000
BEQ             loc_127280
B               loc_12726C
CMP             R1, #0x10000
CMPNE           R1, #0x20000
BNE             loc_12726C
LDR             R3, [R4]
CMP             R3, #0
CMPNE           R12, #0
BEQ             loc_12726C
ADD             R0, R4, #0x3C ; '<'
MOV             R1, R6
LDM             R0, {R0,R2}
B               loc_127268
LDR             R3, [R4,#4]
CMP             R3, #0
BEQ             loc_12726C
CMP             R12, #0
BEQ             loc_12726C
LDR             R2, [R4,#0x40]
MOV             R1, R6
MOV             R0, #0x10000
BLX             R12
MOV             R0, #0
STR             R0, [R4]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
POP             {R4-R6,PC}
LDR             R3, [R4]
CMP             R3, #0
CMPNE           R12, #0
BEQ             loc_1272A0
ADD             R0, R4, #0x3C ; '<'
MOV             R1, R6
LDM             R0, {R0,R2}
BLX             R12
LDR             R3, [R4,#4]
CMP             R3, #0
LDRNE           R12, [R5]
CMPNE           R12, #0
BEQ             loc_12726C
B               loc_12725C
