PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R4, R0
MOV             R6, R1
BL              sub_13DF78
CMP             R0, #0
LDREQ           R0, =0xC8A0A801
BEQ             loc_12237C
LDR             R0, =0x1318
LDRB            R0, [R0,R4]
CMP             R0, #0
BNE             loc_122438
MOV             R5, #0
MOV             R1, #1
MOV             R0, SP
STR             R5, [SP,#0x28+var_28]
BL              sub_120218
MOVS            R1, R0,LSR#31
BNE             loc_122340
LDR             R2, [SP,#0x28+var_28]
MOV             R0, #0
STR             R2, [R4]
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
MOV             R2, #2
LDR             R0, [R4]
MOV             R1, R2
BL              sub_121428
MOV             R7, R0
ANDS            R0, R0, #0x80000000
BPL             loc_122384
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_122378
SVC             0x23 ; '#'
STR             R5, [R4]
MOV             R0, R7
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
ADD             R0, SP, #0x28+var_20
STR             R5, [SP,#0x28+var_20]
BL              sub_1213FC
MOV             R1, R0
ANDS            R0, R0, #0x80000000
BMI             loc_12241C
LDR             R0, [SP,#0x28+var_20]
CMP             R0, #0
STRNE           R0, [R4,#4]
BEQ             loc_12241C
MOV             R0, #0x2000
BL              sub_1213D0
ADD             R0, R4, #8
NOP
BL              sub_118AE8
MOV             R1, R6
MOV             R0, R4
BL              sub_122458
CMP             R6, #0
NOP
BEQ             loc_122428
LDR             R0, =dword_710418
BL              sub_121C90
LDR             R0, =byte_711DC4
NOP
BL              sub_12211C
NOP
NOP
BL              sub_129050
NOP
NOP
BL              sub_12911C
NOP
NOP
BL              sub_121EC4
NOP
NOP
B               loc_122438
ADD             SP, SP, #0x14
MOV             R0, R1
POP             {R4-R7,PC}
LDR             R0, =0x15AC
MOV             R1, #1
STRB            R1, [R0,R4]
STR             R5, [R4,#0x14]
ADD             SP, SP, #0x14
MOV             R0, #0
POP             {R4-R7,PC}
