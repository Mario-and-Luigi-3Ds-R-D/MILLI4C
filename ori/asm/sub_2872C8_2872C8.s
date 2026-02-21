PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R6, R1
SUB             SP, SP, #0x10
MOV             R3, #0
LDR             R0, [R0]
MOV             R5, SP
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x46C
BL              sub_10A358
CMP             R0, #0
LDRNE           R1, [R4]
BLNE            sub_284094
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
LDR             R3, [R4,#0x1C]
LDR             R0, [R4,#0x20]
LDR             R2, =0x2AAAAAAB
MOV             R1, SP
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #2
BHI             loc_287374
CMP             R0, #0
BEQ             loc_287368
LDR             R2, [SP,#0x20+var_20]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x20+var_18]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x20+var_18]
LDR             R0, [R4,#0x20]
ADD             R0, R0, #0xC
STR             R0, [R4,#0x20]
LDR             R0, [SP,#0x20+var_20]
MOV             R1, R6
BL              sub_2834AC
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_2873AC
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_2873AC
BL              sub_2841C8
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
