PUSH            {R4-R11,LR}
MOV             R2, R0
MOV             R4, R1
MOV             R0, R1
ADD             R3, R1, #0x400
LDRB            R1, [R2,#0x1E1]
LDRB            R2, [R3,#0x95]
MOV             R3, #1
SUB             SP, SP, #0x1C
TST             R1, R3,LSL R2
BEQ             loc_21C710
BL              sub_5EC344
CMP             R0, #0
BEQ             loc_21C710
LDR             R5, =off_6CE970
MOV             R0, #0
STR             R0, [SP,#0x40+var_38]
STR             R0, [SP,#0x40+var_34]
LDR             R0, [R5]
BL              sub_5EE458
LDR             R6, =0x1001
CMP             R0, #0x1000
ADD             R11, SP, #0x40+var_38
CMPNE           R0, R6
ADD             R7, R6, #1
ORR             R8, R6, R6,ASR#11
ADD             R9, R6, #0xF
ORR             R10, R6, R6,ASR#8
BEQ             loc_21C61C
CMP             R0, R7
CMPNE           R0, R8
BEQ             loc_21C61C
CMP             R0, R9
CMPNE           R0, R10
BNE             loc_21C680
LDR             R0, [R5]
STR             R11, [SP,#0x40+var_40]
LDRB            R1, [R4,#0x495]
MOV             R3, #1
MOV             R2, #0x35 ; '5'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_21C680
ADD             R0, SP, #0x40+var_30
MOV             R1, #0
MOV             R2, #1
BL              sub_1CCBB4
MOV             R2, #1
MOV             R1, #7
ADD             R0, SP, #0x40+var_30
BL              sub_1CCBB4
LDR             R1, [SP,#0x40+var_38]
MOV             R0, #0x64 ; 'd'
STRB            R0, [SP,#0x40+var_2F]
STRH            R1, [SP,#0x40+var_28]
MOV             R2, #0
ADD             R1, SP, #0x40+var_30
ADD             R0, R4, #0x40 ; '@'
BL              sub_1CE4EC
LDR             R0, [R5]
BL              sub_5EE458
CMP             R0, #0x1000
CMPNE           R0, R6
BEQ             loc_21C6AC
CMP             R0, R7
CMPNE           R0, R8
BEQ             loc_21C6AC
CMP             R0, R9
CMPNE           R0, R10
BNE             loc_21C710
LDR             R0, [R5]
STR             R11, [SP,#0x40+var_40]
LDRB            R1, [R4,#0x495]
MOV             R3, #1
MOV             R2, #0x36 ; '6'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_21C710
ADD             R0, SP, #0x40+var_30
MOV             R1, #0
MOV             R2, #1
BL              sub_1CCBB4
MOV             R2, #1
MOV             R1, #8
ADD             R0, SP, #0x40+var_30
BL              sub_1CCBB4
LDR             R1, [SP,#0x40+var_38]
MOV             R0, #0x64 ; 'd'
STRB            R0, [SP,#0x40+var_2F]
STRH            R1, [SP,#0x40+var_28]
MOV             R2, #0
ADD             R1, SP, #0x40+var_30
ADD             R0, R4, #0x40 ; '@'
BL              sub_1CE4EC
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
