PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#4]
SUB             SP, SP, #0x10
ADD             R4, R0, #8
LDR             R6, [R0,#0x9C]
MOV             R0, SP
MOV             R1, R6
BL              sub_1A6360
LDR             R3, [R4,#0x78]
LDR             R0, [R4,#0x7C]
LDR             R2, =0x2AAAAAAB
MOV             R1, SP
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0xA
BHI             loc_1A2138
CMP             R0, #0
BEQ             loc_1A212C
LDR             R2, [SP,#0x20+var_20]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x20+var_18]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x20+var_18]
LDR             R0, [R4,#0x7C]
ADD             R0, R0, #0xC
STR             R0, [R4,#0x7C]
LDR             R0, [SP,#0x20+var_20]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_1A2170
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_1A2170
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R1, #1
MOV             R0, #0
STRB            R1, [R6]
STRB            R0, [R5,#8]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
