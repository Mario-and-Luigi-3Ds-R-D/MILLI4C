PUSH            {R4-R6,LR}
SUB             SP, SP, #0x18
MOV             R6, R1
MOV             R4, R0
ADD             R1, SP, #0x28+var_1C
BL              sub_5CD958
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R5, SP
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x400
BL              sub_10A358
CMP             R0, #0
BEQ             loc_284294
LDR             R3, [R4]
ADD             R2, SP, #0x28+var_1C
MOV             R1, R6
BL              sub_284630
STR             R0, [SP,#0x28+var_28]
ADD             R0, R5, #4
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_24]
LDR             R3, [R4,#0x40]
LDR             R0, [R4,#0x44]
LDR             R2, =0x2AAAAAAB
MOV             R1, SP
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #5
BHI             loc_284304
CMP             R0, #0
BEQ             loc_2842F8
LDR             R2, [SP,#0x28+var_28]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x28+var_20]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x28+var_20]
LDR             R0, [R4,#0x44]
ADD             R0, R0, #0xC
STR             R0, [R4,#0x44]
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_284334
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_284334
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x18
POP             {R4-R6,PC}
