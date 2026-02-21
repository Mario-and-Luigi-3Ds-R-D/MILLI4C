PUSH            {R3-R7,LR}
MOV             R4, R0
LDR             R1, [R0,#0xC]
LDR             R0, [R0,#0x10]
CMP             R1, #0
BNE             loc_21BFA8
TST             R0, #1
BEQ             loc_21BFE8
CMP             R0, #0
BEQ             loc_21BFE8
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_21BFBC
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_21BFD8
MOV             R0, #1
POP             {R3-R7,PC}
LDR             R0, [R4,#0x10]
TST             R0, #1
CMPNE           R0, #0
BNE             loc_21BFD0
LDR             R5, [R4,#8]
MOV             R6, #0
MOV             R3, #0x100
MOV             R2, R6
MOV             R1, R6
MOV             R0, R5
STR             R6, [SP,#0x18+var_18]
BL              sub_4E3CA0
LDR             R0, [R4]
LDR             R1, [R0,#4]
MOV             R0, R4
BLX             R1
MOV             R0, R5
STR             R6, [R5,#0x13C]
BL              sub_4E5830
LDR             R0, [R5,#0x13C]
CMP             R0, #0
BEQ             locret_21BFD4
LDR             R1, [R0]
LDR             R1, [R1,#8]
ADD             SP, SP, #4
POP             {R4-R7,LR}
BX              R1
