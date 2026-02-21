PUSH            {R4-R7,LR}
MOV             R5, R0
MOV             R6, R1
LDR             R0, =off_6CE970
SUB             SP, SP, #0xC
MOV             R7, R2
MOV             R3, #0
LDR             R0, [R0]
MOV             R4, SP
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x42C
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1F9C90
MOV             R2, R7
MOV             R1, R6
BL              sub_1FCF10
STR             R0, [SP,#0x20+var_20]
ADD             R0, R4, #4
ADD             R2, R5, #0x12000
ADD             R2, R2, #0x6E0
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
LDR             R0, [R2,#0x1C]
LDR             R12, [R2,#0x18]
LDR             R3, =0x2AAAAAAB
MOV             R1, SP
SUB             R12, R0, R12
SMULL           R12, R3, R3, R12
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #2
BHI             loc_1F9D08
CMP             R0, #0
BEQ             loc_1F9CFC
LDR             R3, [SP,#0x20+var_20]
ADD             R1, R1, #4
STR             R3, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x20+var_18]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x20+var_18]
LDR             R0, [R2,#0x1C]
ADD             R0, R0, #0xC
STR             R0, [R2,#0x1C]
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_1F9D34
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_1F9D34
BL              sub_1FD044
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
