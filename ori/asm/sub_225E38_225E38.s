PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R1]
SUB             SP, SP, #0x10
MOV             R4, R1
STR             R0, [SP,#0x20+var_20]
ADD             R0, R4, #4
STR             R0, [SP,#0x20+var_1C]
LDR             R3, [R4,#8]
LDR             R0, =0x126E8
ADD             R2, SP, #0x20+var_1C
STR             R3, [SP,#0x20+var_18]
STR             R2, [R3]
STR             R2, [R4,#8]
LDR             R0, [R0,R5]
MOV             R1, SP
BL              sub_227FB4
LDR             R1, [SP,#0x20+var_18]
ADD             R6, SP, #0x20+var_1C
CMP             R1, R6
BNE             loc_225EA4
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_225EA4
MOV             R1, R0
ADD             R0, SP, #0x20+var_14
BL              sub_5C9440
LDRD            R0, R1, [SP,#0x20+var_1C]
ADD             R2, SP, #0x20+var_1C
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4]
MOV             R1, SP
STR             R0, [SP,#0x20+var_20]
ADD             R0, R4, #4
STR             R0, [SP,#0x20+var_1C]
LDR             R3, [R4,#8]
LDR             R0, =0x126EC
STR             R3, [SP,#0x20+var_18]
STR             R2, [R3]
STR             R2, [R4,#8]
LDR             R0, [R0,R5]
BL              sub_224A44
LDR             R0, [SP,#0x20+var_18]
CMP             R0, R6
BNE             loc_225F08
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_225F08
MOV             R1, R0
ADD             R0, SP, #0x20+var_14
BL              sub_5C9440
LDRD            R0, R1, [SP,#0x20+var_1C]
ADD             R5, R5, #0x12000
ADD             R5, R5, #0x6F0
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4],#4
STR             R4, [SP,#0x20+var_1C]
MOV             R1, SP
STR             R0, [SP,#0x20+var_20]
LDR             R2, [R4,#4]
ADD             R0, SP, #0x20+var_1C
STR             R2, [SP,#0x20+var_18]
STR             R0, [R2]
STR             R0, [R4,#4]
LDR             R0, [R5]
BL              sub_224A44
LDR             R0, [SP,#0x20+var_18]
CMP             R0, R6
BNE             loc_225F6C
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_225F6C
MOV             R1, R0
ADD             R0, SP, #0x20+var_14
BL              sub_5C9440
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
